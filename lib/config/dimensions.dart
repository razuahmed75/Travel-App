import 'package:get/get.dart';

/// dynamic height
double dynamicHeight(double inputHeight) {
  double screenHeight = Dimensions.screenHeight;
  double mockupHeight = Dimensions.mockupHeight;

  var x = mockupHeight / inputHeight;
  var y = screenHeight / x;
  return y;
}

/// dynamic width
double dynamicWidth(double inputwidth) {
  double screenWidth = Dimensions.screenWidth;
  double mockupWidth = Dimensions.mockupWidth;

  var x = mockupWidth / inputwidth;
  var y = screenWidth / x;
  return y;
}

/// dynamic font
double dynamicFont(double inputFont) {
  double screenHeight = Dimensions.screenHeight;
  double mockupHeight = Dimensions.mockupHeight;

  var x = mockupHeight / inputFont;
  var y = screenHeight / x;
  return y;
}

/// dynamic radius
double dynamicRadius(double inputRadius) {
  double screenHeight = Dimensions.screenHeight;
  double mockupHeight = Dimensions.mockupHeight;

  var x = mockupHeight / inputRadius;
  var y = screenHeight / x;
  return y;
}

class Dimensions {
  static double screenHeight = Get.context!.height; // 896
  static double screenWidth = Get.context!.width; // 414
  static double mockupHeight = 896;
  static double mockupWidth = 414;

  /// height for padding and margin
  static double height5 = screenHeight / 179.2;
  static double height10 = screenHeight / 89.6;
  static double height15 = screenHeight / 59.73;
  static double height20 = screenHeight / 44.8;
  static double height25 = screenHeight / 35.84;
  static double height55 = screenHeight / 16.29;
  static double height35 = screenHeight / 25.6;
  static double height45 = screenHeight / 19.91;

  /// dynamic height
  static double height145 = screenHeight / 6.17;
  static double height131 = screenHeight / 6.83;
  static double height76 = screenHeight / 11.78;
  static double height85 = screenHeight / 10.54;
  static double height160 = screenHeight / 5.6;
  static double height200 = screenHeight / 4.48;
  static double height217 = screenHeight / 4.11;
  static double height300 = screenHeight / 2.98;
  static double height400 = screenHeight / 2.24;
  static double height500 = screenHeight / 1.80;

  /// dynamic width
  static double width290 = screenWidth / 1.42;
  static double width100 = screenWidth / 4.11;
  static double width121 = screenWidth / 3.42;
  static double width160 = screenWidth / 2.58;
  static double width134 = screenWidth / 3.09;
  static double width64 = screenWidth / 6.47;
  static double width75 = screenWidth / 5.52;
  static double width91 = screenWidth / 4.55;
  static double width46 = screenWidth / 9;

  /// width for padding and margin
  static double width10 = screenWidth / 41.4;
  static double width15 = screenWidth / 27.6;
  static double width20 = screenWidth / 20.7;
  static double width24 = screenWidth / 17.25;
  static double width40 = screenWidth / 10.35;

  /// dynamic fonts

  static double font30 = screenHeight / 29.87;
  static double font22 = screenHeight / 40.72;
  static double font18 = screenHeight / 49.77;
  static double font16 = screenHeight / 56;
  static double font13 = screenHeight / 68.92;

  /// radius
  static double r13 = height15 - 2;
  static double r16 = height15 + 1;
  static double r25 = screenHeight / 35.84;
}
