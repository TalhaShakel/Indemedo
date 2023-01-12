import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:indemedo/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          "Login",
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                30.h.heightBox,
                Center(
                    child: Container(
                  child: Image.asset(
                    "assets/sig.jpeg",
                    fit: BoxFit.cover,
                    height: 100.h,
                  ),
                )),
                25.heightBox,
                Text(
                  "Sign in to continue ",
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
                30.h.heightBox,
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                      border: Border.all(color: Colors.grey)),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ], // Only numbers can be entered
                    decoration: InputDecoration(
                      // prefixIconConstraints: BoxConstraints(maxWidth: 20),
                      contentPadding: EdgeInsets.all(15),
                      prefixIconConstraints:
                          BoxConstraints(minWidth: 50, minHeight: 0),
                      prefixIcon: Text(
                        "+91",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Colors.black, fontSize: 16.sp),
                      ),
                      // prefixText: "+91",
                      // prefixStyle:
                      //     TextStyle(color: Colors.black, fontSize: 16.sp),
                      suffixIcon: Icon(
                        Icons.close,
                        color: Colors.grey,
                        size: 20,
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Mobile no",
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                20.h.heightBox,
                Container(
                  height: 50.h,
                  width: Get.width.w,
                  decoration: BoxDecoration(
                      color: ConstColors.DarkMainColor,
                      borderRadius: BorderRadius.all(Radius.circular(13.r))),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          backgroundColor: ConstColors.DarkMainColor),
                      onPressed: () {},
                      child: Text(
                        "Get verfication code",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100.h,
                width: Get.width.w,
                decoration: BoxDecoration(color: Colors.grey[200]),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Betterment is our concern!!",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Sign in to start your healthcare journey",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Made with Heart by Indimedo",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.sp,
                        ),
                      ),
                      10.h.heightBox,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
