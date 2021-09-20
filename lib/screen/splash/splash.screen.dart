import 'package:flutter/painting.dart';
import 'package:todoapp/resources/styles/colors.dart';
import 'package:todoapp/resources/styles/styles.dart';
import 'package:todoapp/screen/splash/splash.controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainColor,
      child: Center(
        child: Text(
          "To Do App",
          style: AppStyles()
              .typeRegular(30, AppColors.white)
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
