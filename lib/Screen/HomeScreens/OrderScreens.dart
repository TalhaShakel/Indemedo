import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:indemedo/Constants/ColorConstants.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.MainColor,
      body: Container(
        color: ConstColors.MainColor,
        child: Text(
          "Hello blank fargment",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
