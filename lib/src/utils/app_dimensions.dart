import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDimensions {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeight(double pixels) {
    double screenHeight = getScreenHeight();
    double scale = screenHeight / pixels;
    return screenHeight / scale;
  }

  static getWidth(double pixels) {
    double screenWidth = getScreenWidth();
    double scale = screenWidth / pixels;
    return screenWidth / scale;
  }
}
