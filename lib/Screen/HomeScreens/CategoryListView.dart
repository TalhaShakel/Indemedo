import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:indemedo/Constants/ColorConstants.dart';
import 'package:indemedo/Screen/HomeScreens/CategoryData.dart';
import 'package:velocity_x/velocity_x.dart';

class Categorylist extends StatelessWidget {
  const Categorylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        backgroundColor: ConstColors.DarkMainColor,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Menu",
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              15.h.heightBox,
              Text(
                "Hi there!",
                style: TextStyle(
                    color: ConstColors.DarkMainColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              ),
              10.h.heightBox,
              Text(
                "Sign in to start your healthcare journey",
                style: TextStyle(
                    color: ConstColors.MainColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500),
              ),
              15.h.heightBox,
              Container(
                height: 50.h,
                width: Get.width.w,
                decoration: BoxDecoration(
                    color: ConstColors.DarkMainColor,
                    borderRadius: BorderRadius.all(Radius.circular(13.r))),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ConstColors.DarkMainColor),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              10.h.heightBox,
              ExpandableList(),
            ],
          ),
        ),
      ),
    );
  }
}
