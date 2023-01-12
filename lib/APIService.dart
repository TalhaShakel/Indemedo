import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

var stringResponse;
Map mapResponse = {};
List mapBannerData = [];
List mapTradingProduct = [];
List mapShopbyBrands = [];
List mapdiscountOffer = [];
List mapMedicalDevices = [];
List mapDietNutrition = [];
List mapPersonalCare = [];
List mapshopbyHC = [];
List mapCategoriesData = [];
List mapCategoriesSubData = [];
List advt1 = [];
List advt2 = [];
List advt3 = [];
List advt4 = [];

Future apiCall() async {
  try {
    http.Response response;
    response = await http.get(Uri.parse("https://indimedo.com/api/homepage1"));
    if (response.statusCode == 200) {
      // stringResponse = response.body;
      mapResponse = json.decode(response.body);
      mapCategoriesData = mapResponse['categories']['data'];
      mapCategoriesSubData = mapResponse['categories']['data']['children_data'];
      mapBannerData = mapResponse['bannertop']['data'];
      mapTradingProduct = mapResponse['tradingproduct']['data'];
      mapShopbyBrands = mapResponse['shopbybrands']['data'];
      mapdiscountOffer = mapResponse['discountofferproducts']['data'];
      mapMedicalDevices = mapResponse['medicaldevices']['data'];
      mapDietNutrition = mapResponse['dietnutrition']['data'];
      mapPersonalCare = mapResponse['personalcare']['data'];
      mapshopbyHC = mapResponse['shopbyhealthconcern']['data'];
      advt1 = mapResponse['advt1']['data'];
      advt2 = mapResponse['advt2']['data'];
      advt3 = mapResponse['advt3']['data'];
      advt4 = mapResponse['advt4']['data'];
    }
  } catch (e) {
    Get.snackbar("${e}", "");
  }
}
