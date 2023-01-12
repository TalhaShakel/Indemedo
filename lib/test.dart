import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:indemedo/APIService.dart';


class testScreen extends StatefulWidget {
  testScreen({super.key});

  @override
  State<testScreen> createState() => _testScreenState();
}

class _testScreenState extends State<testScreen> {
  // Future apiCall() async {
  //   http.Response response;
  //   response = await http.get(Uri.parse("https://indimedo.com/api/homepage1"));
  //   if (response.statusCode == 200) {
  //     setState(() {
  //       // stringResponse = response.body;
  //       mapResponse = json.decode(response.body);
  //       mapBannerData = mapResponse['bannertop']['data'];
  //     });
  //   }
  // }

  @override
  void initState() {
    apiCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: mapResponse.isEmpty
              ? Container()
              : Center(
                  child: ListView.builder(
                      itemCount: mapResponse['discountofferproducts']['data'].length,
                      itemBuilder: (context, index) {
                        return Text(
                          mapdiscountOffer[index]['name']
                              // mapResponse['bannertop']['data'][index]["image"]
                              // .runtimeType
                              .toString(),
                          style: TextStyle(color: Colors.amber),
                        );
                      }))),
    );
  }
}
