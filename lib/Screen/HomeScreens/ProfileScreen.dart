import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:indemedo/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.MainColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              50.h.heightBox,
              Center(
                child: Container(
                  child: Image.asset(
                    "assets/Mlogo.png",
                    height: 100.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              
              TextField(
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
                decoration: new InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    // border: UnderlineInputBorder(
                    //   borderSide: BorderSide(color: theColor),
                    // ),
                    // hintText: "Enter your email",
                    labelText: "Mobile Number",
                    labelStyle: TextStyle(color: Colors.white, fontSize: 10.sp),
                    border:  UnderlineInputBorder(
                        borderSide:  BorderSide(color: Colors.white))),
              ),
              
              50.h.heightBox,
              Container(
                height: 50.h,
                width: Get.width.w,
                decoration: BoxDecoration(
                    color: ConstColors.MainColor,
                    borderRadius: BorderRadius.all(Radius.circular(10.r))),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: Color(0xfffe7200)),
                    onPressed: () {},
                    child: Text(
                      "LOGIN OR SIGNUP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
