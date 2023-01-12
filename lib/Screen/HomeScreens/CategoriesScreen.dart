import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          5.h.heightBox,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Container(
              height: 350.h,
              width: Get.width.w,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ], color: Colors.white),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Have a prescription? Upload here",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp),
                      ),
                      25.h.heightBox,
                      Container(
                        height: 80.h,
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: Color(0xfffe7200),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.r))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment:
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.camera_alt_outlined,
                                  size: 30.sp,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Camera",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            Container(
                              height: 60.h,
                              width: 1.w,
                              color: Colors.white,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.photo_album_outlined,
                                  size: 30.sp,
                                  color: Colors.white,
                                ),
                                Text(
                                  "Gallery",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            Container(
                              height: 60.h,
                              width: 1.w,
                              color: Colors.white,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.report_gmailerrorred_outlined,
                                  size: 30.sp,
                                  color: Colors.white,
                                ),
                                Text(
                                  "My Prescription",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      35.h.heightBox,
                      Row(
                        children: [
                          Container(
                              height: 70.h,
                              width: 70.w,
                              child: Image.asset("assets/s1.jpg")),
                          5.w.widthBox,
                          Container(
                            width: 200.w,
                            child: Text(
                              "Your attached prescription will be secure and private. Only our pharmacist will review it",
                              softWrap: true,
                              style: TextStyle(
                                  height: 1.5,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp),
                            ),
                          )
                        ],
                      ),
                      20.h.heightBox,
                      Row(
                        children: [
                          8.w.widthBox,
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xfffe7200),
                            ),
                            child: Icon(
                              Icons.info_outline_rounded,
                              size: 20.sp,
                              color: Colors.white,
                            ),
                          ),
                          10.w.widthBox,
                          Text(
                            "Valid Prescription Guide",
                            softWrap: true,
                            style: TextStyle(
                                height: 1.5,
                                color: Color(0xfffe7200),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
