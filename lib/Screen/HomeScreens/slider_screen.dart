import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:indemedo/APIService.dart';
import 'package:indemedo/Constants/ColorConstants.dart';
class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
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
    super.initState();
  }

  // List imageList = [
  //   {"image_path": 'assets/bb.jpg'},
  //   {"image_path": 'assets/bb.jpg'},
  //   {"image_path": 'assets/aa.PNG'},
  //   {"image_path": 'assets/aa.PNG'},
  // ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            // print(currentIndex);
          },
          child: FutureBuilder(
              future: apiCall(),
              builder: (context, snapshot) {
                return CarouselSlider(
                  items: mapBannerData
                      .map(
                        (item) => Image.network(
                          item['image'],
                          fit: BoxFit.fill,
                          width: Get.width,
                        ),
                      )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    scrollPhysics: BouncingScrollPhysics(),
                    autoPlay: true,
                    aspectRatio: 2,
                    // enlargeCenterPage: true,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                );
              }),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: mapBannerData.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => carouselController.animateToPage(entry.key),
                child: Container(
                  width: 7.w,
                  height: 7.h,
                  margin: EdgeInsets.symmetric(
                    horizontal: 3.h,
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == entry.key
                          ? ConstColors.MainColor
                          : Colors.white),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
