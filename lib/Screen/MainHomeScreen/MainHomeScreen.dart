import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:indemedo/Constants/ColorConstants.dart';
import 'package:indemedo/Controller/Maincontrollers.dart';
import 'package:indemedo/Screen/HomeScreens/CallScreens.dart';
import 'package:indemedo/Screen/HomeScreens/CategoriesScreen.dart';
import 'package:indemedo/Screen/HomeScreens/CategoryListView.dart';
import 'package:indemedo/Screen/HomeScreens/HomeScreen.dart';
import 'package:indemedo/Screen/HomeScreens/OrderScreens.dart';
import 'package:indemedo/Screen/HomeScreens/ProfileScreen.dart';
import 'package:indemedo/Screen/HomeScreens/SinUpScreen.dart';
import 'package:velocity_x/velocity_x.dart';

class MainHomeScreen extends StatelessWidget {
  MainHomeScreen({super.key});
  var _ = MainController.instance;

  // int _selectIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoryScreen(),
    OrderScreen(),
    CallScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        appBar:
            // _.isShow == true?
            AppBar(
          backgroundColor: ConstColors.MainColor,
          elevation: 0,
          title: Container(
              height: 50.h,
              width: 100.w,
              child: Image.asset(
                "assets/Mlogo.png",
                fit: BoxFit.cover,
              )),
          leading: GestureDetector(
            onTap: () {
              Get.to(() => Categorylist());
            },
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: 25,
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Get.to(() => LoginScreen());
              },
              child: Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
            7.w.widthBox,
            GestureDetector(
              onTap: () {
                Get.to(() => ProfileScreen());
              },
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 35.h,
                        width: 35.w,
                        child: Image.asset(
                          "assets/sh.png",
                          height: 10.h,
                          width: 10.w,
                          // fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                    top: 7.w,
                    right: 0.h,
                    child: Container(
                      height: 15.h,
                      width: 15.w,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          "0",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 10.sp),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            15.w.widthBox,
          ],
        ),
        // : AppBar(
        //     elevation: 0,
        //     backgroundColor: ConstColors.MainColor,
        //     leading: Container(),
        //   ),

        drawer: Drawer(
          // width:
          child: ListView(
            children: [
              Center(
                child: Icon(
                  Icons.home,
                  size: 70.sp,
                  color: ConstColors.MainColor,
                ),
              )
            ],
          ),
        ),

        // Drawer(
        //   width: Get.width,
        //   child: SingleChildScrollView(
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Container(
        //           margin: EdgeInsets.only(top: 5.w),
        //           height: 80.h,
        //           width: Get.width.w,
        //           color: ConstColors.DarkMainColor,
        //           child: Row(
        //             children: [
        //               10.w.widthBox,
        //               Icon(
        //                 Icons.arrow_back,
        //                 color: Colors.white,
        //               ),
        //               30.w.widthBox,
        //               Text(
        //                 "Menu",
        //                 style: TextStyle(
        //                     color: Colors.white,
        //                     fontSize: 16.sp,
        //                     fontWeight: FontWeight.w500),
        //               )
        //             ],
        //           ),
        //         ),
        //         Text(
        //           "Hi there!",
        //           style: TextStyle(
        //               color: ConstColors.DarkMainColor,
        //               fontSize: 16.sp,
        //               fontWeight: FontWeight.w500),
        //         ),
        //         Text(
        //           "Sign in to start your healthcare journey",
        //           style: TextStyle(
        //               color: ConstColors.MainColor,
        //               fontSize: 16.sp,
        //               fontWeight: FontWeight.w500),
        //         ),
        //         ElevatedButton(
        //             onPressed: () {},
        //             child: Text(
        //               "Login",
        //               style: TextStyle(
        //                   color: Colors.white,
        //                   fontSize: 14.sp,
        //                   fontWeight: FontWeight.w500),
        //             )),

        //         ExpandableList(),
        //         // ListView.builder(
        //         //   shrinkWrap: true,
        //         //   itemBuilder: (BuildContext context, int index) =>
        //         //       EntryItem(data[index]),
        //         //   itemCount: data.length,
        //         // ),
        //       ],
        //     ),
        //   ),
        // ),
        // ///////////////////////////////////////////////////
        body: _widgetOptions[controller.index],
        bottomNavigationBar: Container(
          child: ClipRRect(
            child: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  label: "Home",
                  icon: GestureDetector(
                      onTap: () {
                        controller.pages(0);
                      },
                      child: Container(
                          height: 24.h,
                          width: 24.h,
                          child: Image.asset("assets/Home.png"))),
                ),
                BottomNavigationBarItem(
                  label: "Prescription",
                  icon: GestureDetector(
                      onTap: () {
                        controller.pages(1);
                      },
                      child: Container(
                          height: 24.h,
                          width: 24.h,
                          child: Image.asset("assets/C.png"))),
                ),
                BottomNavigationBarItem(
                  label: "Order",
                  icon: GestureDetector(
                      onTap: () {
                        controller.pages(2);
                      },
                      child: Container(
                          height: 24.h,
                          width: 24.h,
                          child: Image.asset("assets/o.png"))),
                ),
                BottomNavigationBarItem(
                  label: "Call",
                  icon: GestureDetector(
                      onTap: () {
                        controller.pages(3);
                      },
                      // child: Icon(Icons.waves, color: ConstColors.NavbarIconC),
                      child: Container(
                          height: 24.h,
                          width: 24.h,
                          child: Image.asset("assets/C2.png"))),
                ),
                BottomNavigationBarItem(
                  label: "Profile",
                  icon: GestureDetector(
                      onTap: () {
                        controller.pages(4);
                      },
                      child: Container(
                          height: 24.h,
                          width: 24.h,
                          child: Image.asset("assets/p.png"))),
                ),
              ],
              currentIndex: controller.index,
              selectedItemColor: ConstColors.MainColor,
              unselectedLabelStyle: TextStyle(
                color: Colors.grey,
              ),
              selectedLabelStyle: TextStyle(
                color: ConstColors.MainColor,
              ),

              // showUnselectedLabels: true,
              // unselectedItemColor: Colors.grey,

              // onTap: Get.find(),
            ),
          ),
        ),
      );
    });
  }
}
