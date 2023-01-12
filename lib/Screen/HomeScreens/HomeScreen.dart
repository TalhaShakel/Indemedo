import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:indemedo/APIService.dart';
import 'package:indemedo/Constants/ColorConstants.dart';
import 'package:indemedo/Screen/HomeScreens/SearchProductScreen.dart';
import 'package:indemedo/Screen/HomeScreens/slider_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List imglist = [
    "assets/B.jpg",
    "assets/b2.jpg",
    "assets/B.jpg",
    "assets/B.jpg",
    "assets/B.jpg",
    "assets/B.jpg",
    "assets/B.jpg",
    "assets/B.jpg",
    "assets/B.jpg",
  ];

  List imglist2 = [
    "assets/co.jpg",
    "assets/co.jpg",
    "assets/co.jpg",
    "assets/co.jpg",
    "assets/co.jpg",
    "assets/co.jpg",
    "assets/co.jpg",
    "assets/co.jpg",
    "assets/co.jpg",
    "assets/co.jpg",
    "assets/co.jpg",
    "assets/co.jpg",
  ];

  @override
  void initState() {
    apiCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 60.h,
            width: Get.width,
            decoration: BoxDecoration(
              color: ConstColors.MainColor,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.w),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => SearchProduct());
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5.r))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        // width: 60.w,
                        child: Text("\tSearch...",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 13.sp,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ),
                      Container(
                        height: Get.height,
                        width: 50.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5.r),
                                bottomRight: Radius.circular(5.r)),
                            color: Colors.grey[300]),
                        child: Icon(
                          Icons.search_sharp,
                          color: ConstColors.MainColor,
                          size: 30.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 20.h),
            //   child: Container(
            //     height: 50.h,
            //     child: GestureDetector(
            //       child: TextField(
            //         decoration: InputDecoration(
            //           filled: true,
            //           fillColor: ConstColors.textfieldColor,
            //           contentPadding: EdgeInsets.all(10),
            //           //////////////////////////////////////////
            //           suffixIcon: Container(
            //             child: Icon(
            //               Icons.search,
            //               color: ConstColors.MainColor,
            //               size: 30.sp,
            //             ),
            //           ),
            //           enabledBorder: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(5),
            //           ),
            //           focusedBorder: OutlineInputBorder(
            //             borderSide:
            //                 BorderSide(color: ConstColors.textfieldColor),
            //             borderRadius: BorderRadius.circular(5),
            //           ),
            //           hintText: "Search...",
            //           hintStyle: TextStyle(
            //               fontStyle: FontStyle.italic,
            //               fontSize: 13.sp,
            //               letterSpacing: 2,
            //               fontWeight: FontWeight.w700,
            //               color: Colors.grey),
            //           border: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(5.r),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ),
          ///////////////////////////////////
          Container(
            height: 40.h,
            width: Get.width.w,
            color: ConstColors.DarkMainColor,
            child: Row(
              children: [
                10.w.widthBox,
                Container(
                  height: 25.h,
                  width: 25.w,
                  decoration: BoxDecoration(
                      color: Color(0xff77a8d1), shape: BoxShape.circle),
                  child: Image.asset("assets/rx.png"),
                ),
                4.w.widthBox,
                Text(
                  "Upload Prescription",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                2.w.widthBox,
                Text(
                  "9667792090",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500),
                ),
                10.w.widthBox
              ],
            ),
          ),
          //////////////////////////////////////////////////
          5.h.heightBox,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SliderScreen(),
                // Container(
                //     // child: Image.asset(""),
                //     ),
                3.h.heightBox,
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.w),
                    child: Text(
                      "FASTEST MEDICINE HOME DELIVERY IN DELHI-NCR | ORDER MEDICINE ONLINE FROM INDIMEDO",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff535253),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                7.h.heightBox,
                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Trading Product",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff535253),
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      ),
                      8.h.heightBox,
                      /////////////////////////////////////////////////
                      FutureBuilder(
                          future: apiCall(),
                          builder: (context, snapshot) {
                            return GridView.count(
                                physics: ScrollPhysics(),
                                crossAxisCount: 3,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,

                                ///6 temporary
                                children: List.generate(
                                    mapTradingProduct.length, (index) {
                                  return Container(
                                    height: 70.h,
                                    width: 170.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.r))),
                                    child: Image.network(
                                      // "assets/t.PNG",
                                      "${mapTradingProduct[index]['image']}",
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                }));
                          }),

                      // Image.asset(
                      //   "assets/t.jpg",
                      //   fit: BoxFit.cover,
                      // )
                    ],
                  ),
                ),
                /////////////////////////////////
                8.h.heightBox,
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Full body health checkups",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff535253),
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp),
                          ),
                          Spacer(),
                          Text(
                            "See all",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ConstColors.DarkMainColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp),
                          ),
                          Container(
                              height: 30.h,
                              width: 30.w,
                              child: Image.asset("assets/ri.png")),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 290.w,
                            child: Text(
                              "Get up to 75% off on health checkups. Safe home Sample Colllection, smart reports, free doctor consultation and more",
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                          ),
                          Container(
                              height: 30.h,
                              width: 30.w,
                              child: Image.asset("assets/hn.jpg")),
                        ],
                      ),
                      15.h.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            methealthContainer(),
                            methealthContainer(),
                            methealthContainer(),
                            methealthContainer(),
                            methealthContainer(),
                            methealthContainer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                10.h.heightBox,

                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      5.h.heightBox,
                      Text(
                        "Shop by Brands",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff535253),
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      ),
                      8.h.heightBox,
                      FutureBuilder(
                          future: apiCall(),
                          builder: (context, snapshot) {
                            return GridView.count(
                                physics: ScrollPhysics(),
                                crossAxisCount: 3,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: List.generate(mapShopbyBrands.length,
                                    (index) {
                                  return Container(
                                    height: 39.h,
                                    width: 170.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.r))),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.h, vertical: 10.w),
                                      child: Center(
                                          child: Image.network(
                                        "${mapShopbyBrands[index]['image']}",
                                      )),
                                    ),
                                  );
                                }));
                          }),
                      8.h.heightBox,
                    ],
                  ),
                ),

                8.h.heightBox,
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Discount Offer",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp),
                          ),
                          Spacer(),
                          Text(
                            "See all",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ConstColors.DarkMainColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp),
                          ),
                          Container(
                              height: 30.h,
                              width: 30.w,
                              child: Image.asset("assets/ri.png")),
                        ],
                      ),
                      15.h.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            // ListView.builder(
                            //   shrinkWrap: true,
                            //   itemCount: mapdiscountOffer.length,
                            //   itemBuilder: (context, index) {
                            //   return discountOfferContainer(
                            //     "${mapdiscountOffer[index]['image']}",
                            //     "${mapdiscountOffer[index]['name']}",
                            //     "${mapdiscountOffer[index]["regular_price"]}",
                            //     "${mapdiscountOffer[index]["new_price"]}",
                            //     "${mapdiscountOffer[index]['discount']}",
                            //   );
                            // }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                8.h.heightBox,
                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      5.h.heightBox,
                      Text(
                        "Hot Products",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp),
                      ),
                      8.h.heightBox,
                      GridView.count(
                          physics: ScrollPhysics(),
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: List.generate(imglist2.length, (index) {
                            return Container(
                              height: 70.h,
                              width: 170.w,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.r))),
                              child: Column(
                                children: [
                                  Center(
                                    child: Image.asset(
                                      "${imglist2[index]}",
                                      fit: BoxFit.cover,
                                      height: 80,
                                    ),
                                  ),
                                  5.h.heightBox,
                                  Text(
                                    "Face mask",
                                    softWrap: true,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                            );
                          })),
                      8.h.heightBox,
                    ],
                  ),
                ),
                8.h.heightBox,
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Homeopathy",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp),
                          ),
                          Spacer(),
                          Text(
                            "See all",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ConstColors.DarkMainColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp),
                          ),
                          Container(
                              height: 30.h,
                              width: 30.w,
                              child: Image.asset("assets/ri.png")),
                        ],
                      ),
                      15.h.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            homeopathyContainer(),
                            homeopathyContainer(),
                            homeopathyContainer(),
                            homeopathyContainer(),
                            homeopathyContainer(),
                            homeopathyContainer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                8.h.heightBox,
                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Skin Care",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      ),
                      8.h.heightBox,
                      Image.asset(
                        "assets/ma.jpg",
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                ),
                8.h.heightBox,
                ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: advt1.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Image.network("${advt1[index]['image']}"),
                      );
                    }),
                8.h.heightBox,
                ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: advt2.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Image.network("${advt2[index]['image']}"),
                      );
                    }),
                8.h.heightBox,
                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      5.h.heightBox,
                      Text(
                        "Baby Care",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      ),
                      8.h.heightBox,
                      GridView.count(
                          // childAspectRatio: (200.w / 150.h),
                          physics: ScrollPhysics(),
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: List.generate(12, (index) {
                            return Container(
                              height: 70.h,
                              width: 170.w,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.r))),
                              child: Column(
                                children: [
                                  Center(
                                    child: Image.asset(
                                      "assets/d.PNG",
                                      // "${imglist2[index]}",
                                      fit: BoxFit.cover,
                                      height: 80,
                                    ),
                                  ),
                                  5.h.heightBox,
                                  Text(
                                    "Face mask",
                                    softWrap: true,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                            );
                          })),
                      8.h.heightBox,
                    ],
                  ),
                ),
                8.h.heightBox,
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Personal Care",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp),
                          ),
                          Spacer(),
                          Text(
                            "See all",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ConstColors.DarkMainColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp),
                          ),
                          Container(
                              height: 30.h,
                              width: 30.w,
                              child: Image.asset("assets/ri.png")),
                        ],
                      ),
                      15.h.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            personalCareContainer(),
                            personalCareContainer(),
                            personalCareContainer(),
                            personalCareContainer(),
                            personalCareContainer(),
                            personalCareContainer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                8.h.heightBox,

                ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: advt3.length,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 10.w),
                          child: Image.network("${advt3[index]['image']}"),
                        ),
                      );
                    }),

                8.h.heightBox,
                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      5.h.heightBox,
                      Text(
                        "Medical Devices",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      ),
                      8.h.heightBox,
                      FutureBuilder(
                          future: apiCall(),
                          builder: (context, snapshot) {
                            return GridView.count(
                                childAspectRatio: 20.w / 23.h,
                                physics: ScrollPhysics(),
                                crossAxisCount: 3,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: List.generate(
                                    mapMedicalDevices.length, (index) {
                                  return Container(
                                    height: 100.h,
                                    width: 170.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.r))),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Image.network(
                                            "${mapMedicalDevices[index]['image']}",
                                            // "${imglist2[index]}",
                                            fit: BoxFit.cover,
                                            height: 80,
                                          ),
                                        ),
                                        5.h.heightBox,
                                        Text(
                                          "${mapMedicalDevices[index]['name']}",
                                          softWrap: true,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                  );
                                }));
                          }),
                      8.h.heightBox,
                    ],
                  ),
                ),
                8.h.heightBox,

                ListView.builder(
                    shrinkWrap: true,
                    itemCount: advt4.length,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 10.w),
                          child: Image.network("${advt4[index]['image']}"),
                        ),
                      );
                    }),

                8.h.heightBox,
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Immunity Booster",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp),
                          ),
                          Spacer(),
                          Text(
                            "See all",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: ConstColors.DarkMainColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.sp),
                          ),
                          Container(
                              height: 30.h,
                              width: 30.w,
                              child: Image.asset("assets/ri.png")),
                        ],
                      ),
                      15.h.heightBox,
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            immunityBoosterContainer(),
                            immunityBoosterContainer(),
                            immunityBoosterContainer(),
                            immunityBoosterContainer(),
                            immunityBoosterContainer(),
                            immunityBoosterContainer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                8.h.heightBox,
                Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      5.h.heightBox,
                      Text(
                        "Diet Nutrition",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      ),
                      8.h.heightBox,
                      FutureBuilder(
                          future: apiCall(),
                          builder: (context, snapshot) {
                            return GridView.count(
                                childAspectRatio: (30.w / 35.h),
                                physics: ScrollPhysics(),
                                crossAxisCount: 3,
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: List.generate(mapDietNutrition.length,
                                    (index) {
                                  return Container(
                                    height: 70.h,
                                    width: 170.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.r))),
                                    child: Column(
                                      children: [
                                        Center(
                                          child: Image.network(
                                            // "assets/t.PNG",
                                            "${mapDietNutrition[index]['image']}",
                                            fit: BoxFit.cover,
                                            height: 80,
                                          ),
                                        ),
                                        5.h.heightBox,
                                        Text(
                                          "${mapDietNutrition[index]['name']}",
                                          softWrap: true,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                  );
                                }));
                          }),
                      25.h.heightBox,
                    ],
                  ),
                ),
                25.h.heightBox,
                Text(
                  "Your Betterment is Our Concern!!",
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp),
                ),
                10.h.heightBox,
                Text(
                  "We lot you feel good!",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp),
                ),
                10.h.heightBox,
                Row(
                  children: [
                    Text(
                      "Made with",
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp),
                    ),
                    4.w.widthBox,
                    Container(
                        height: 20.h,
                        width: 20.w,
                        child: Image.asset("assets/h23.png")),
                    4.w.widthBox,
                    Text(
                      "by Indimedo",
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
                40.h.heightBox,
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding immunityBoosterContainer() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Container(
        height: 260.h,
        width: 250.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
                child: Container(
                    height: 120.h,
                    width: 120.w,
                    child: Image.asset("assets/a.PNG"))),
            10.h.heightBox,
            Text(
              "Fast and Up Everyday...",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp),
            ),
            5.h.heightBox,
            RichText(
              text: TextSpan(
                text: '\$1476',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16.sp),
                children: [
                  WidgetSpan(child: SizedBox(width: 5.w)),
                  TextSpan(
                      text: '\$1640',
                      style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  WidgetSpan(child: SizedBox(width: 5.w)),
                  TextSpan(
                    text: "10% off",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                        fontSize: 14.sp),
                  ),
                ],
              ),
            ),
            13.h.heightBox,
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  border: Border.all(width: 2.w, color: ConstColors.MainColor)),
              height: 40.h,
              width: Get.width.w,
              child: Center(
                  child: Text(
                "Add to cart",
                style: TextStyle(
                    color: ConstColors.MainColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp),
              )),
            )
          ],
        ),
      ),
    );
  }

  Padding personalCareContainer() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Container(
        height: 260.h,
        width: 250.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
                child: Container(
                    height: 120.h,
                    width: 120.w,
                    child: Image.asset("assets/bo.jpg"))),
            10.h.heightBox,
            Text(
              "Inlife Fruit Face Scrub",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp),
            ),
            5.h.heightBox,
            RichText(
              text: TextSpan(
                text: '\$359.1',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16.sp),
                children: [
                  WidgetSpan(child: SizedBox(width: 5.w)),
                  TextSpan(
                      text: '\$399',
                      style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  WidgetSpan(child: SizedBox(width: 5.w)),
                  TextSpan(
                    text: "10% off",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                        fontSize: 14.sp),
                  ),
                ],
              ),
            ),
            13.h.heightBox,
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  border: Border.all(width: 2.w, color: ConstColors.MainColor)),
              height: 40.h,
              width: Get.width.w,
              child: Center(
                  child: Text(
                "Add to cart",
                style: TextStyle(
                    color: ConstColors.MainColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp),
              )),
            )
          ],
        ),
      ),
    );
  }

  Padding homeopathyContainer() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Container(
        height: 260.h,
        width: 250.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
                child: Container(
                    height: 120.h,
                    width: 120.w,
                    child: Image.asset("assets/bo.jpg"))),
            10.h.heightBox,
            Text(
              "Wheezal Eye Bright Eye...",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp),
            ),
            Text(
              "Rx (Presription required)",
              style: TextStyle(
                  color: ConstColors.MainColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp),
            ),
            5.h.heightBox,
            RichText(
              text: TextSpan(
                text: '\$66.3',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16.sp),
                children: [
                  WidgetSpan(child: SizedBox(width: 5.w)),
                  TextSpan(
                      text: '\$85',
                      style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  WidgetSpan(child: SizedBox(width: 5.w)),
                  TextSpan(
                    text: "22% off",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                        fontSize: 14.sp),
                  ),
                ],
              ),
            ),
            13.h.heightBox,
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  border: Border.all(width: 2.w, color: ConstColors.MainColor)),
              height: 40.h,
              width: Get.width.w,
              child: Center(
                  child: Text(
                "Add to cart",
                style: TextStyle(
                    color: ConstColors.MainColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp),
              )),
            )
          ],
        ),
      ),
    );
  }

  Padding discountOfferContainer(var networkimg, var tabletName, var newPrice,
      var regularPrice, var discount) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Container(
        height: 260.h,
        width: 250.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
                child: Container(
                    height: 120.h,
                    width: 120.w,
                    child: Image.network(networkimg))),
            10.h.heightBox,
            Text(
              tabletName,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp),
            ),
            Text(
              "Rx (Presription required)",
              style: TextStyle(
                  color: ConstColors.MainColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp),
            ),
            5.h.heightBox,
            RichText(
              text: TextSpan(
                text: newPrice,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16.sp),
                children: [
                  WidgetSpan(child: SizedBox(width: 5.w)),
                  TextSpan(
                      text: '$regularPrice',
                      style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  WidgetSpan(child: SizedBox(width: 5.w)),
                  TextSpan(
                    text: "${discount}% off",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                        fontSize: 14.sp),
                  ),
                ],
              ),
            ),
            13.h.heightBox,
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  border: Border.all(width: 2.w, color: ConstColors.MainColor)),
              height: 40.h,
              width: Get.width.w,
              child: Center(
                  child: Text(
                "Add to cart",
                style: TextStyle(
                    color: ConstColors.MainColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp),
              )),
            )
          ],
        ),
      ),
    );
  }

  Padding methealthContainer() {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Container(
        height: 170.h,
        width: 300.w,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(6.r))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              10.h.heightBox,
              Text(
                "Met Health Comprehensive",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
              ),
              5.h.heightBox,
              Text(
                "includes 12 tests",
                style: TextStyle(color: Colors.grey, fontSize: 14.sp),
              ),
              10.h.heightBox,
              Container(
                  height: 20.h,
                  width: 60.w,
                  child: Image.asset("assets/me.jpg")),
              10.h.heightBox,
              Text(
                "Iron Studies Iron, TIBC, TS%",
                style: TextStyle(color: Colors.grey, fontSize: 14.sp),
              ),
              5.h.heightBox,
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.green,
                    size: 20.sp,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                    size: 20.sp,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                    size: 20.sp,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                    size: 20.sp,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                    size: 20.sp,
                  ),
                  8.w.widthBox,
                  Text(
                    "4.8",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                        fontSize: 14.sp),
                  ),
                ],
              ),
              10.h.heightBox,
              RichText(
                text: TextSpan(
                  text: '\$2199',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 16.sp),
                  children: [
                    WidgetSpan(child: SizedBox(width: 5.w)),
                    TextSpan(
                        text: '\$8085',
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                    WidgetSpan(child: SizedBox(width: 5.w)),
                    TextSpan(
                      text: "73% off",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.green,
                          fontSize: 14.sp),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
