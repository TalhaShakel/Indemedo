import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:indemedo/APIService.dart';
import 'package:indemedo/Constants/ColorConstants.dart';
import 'package:velocity_x/velocity_x.dart';

class PersonalCareScreen extends StatelessWidget {
  const PersonalCareScreen({super.key});

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
          "Personal Care",
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder(
                future: apiCall(),
                builder: (context, snapshot) {
                  return GridView.count(
                      childAspectRatio: 20.w / 20.h,
                      physics: ScrollPhysics(),
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: List.generate(mapPersonalCare.length, (index) {
                        return Container(
                          height: 100.h,
                          width: 170.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.r))),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Image.network(
                                    "${mapPersonalCare[index]['image']}",
                                    fit: BoxFit.cover,
                                    height: 100,
                                  ),
                                ),
                                // 5.h.heightBox,
                                Text(
                                  "${mapPersonalCare[index]['new_price']}",
                                  softWrap: true,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.sp),
                                ),
                                5.h.heightBox,
                                Text(
                                  "${mapPersonalCare[index]['name']}",
                                  softWrap: true,
                                  style: TextStyle(
                                      color: Colors.black,
                                      // fontWeight: FontWeight.w500,
                                      fontSize: 12.sp),
                                ),
                              ],
                            ),
                          ),
                        );
                      }));
                }),
          ],
        ),
      ),
    );
  }
}
