import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:indemedo/Constants/ColorConstants.dart';
import 'package:indemedo/Screen/MainHomeScreen/MainHomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Get.to(() => MainHomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.SplashColor,
      body: Center(
        child: Image.asset(
          "assets/1.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
