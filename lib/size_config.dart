import 'package:flutter/widgets.dart';

class SizeConfig {
  static double widthInPx = 1080;
  static double heightInPx = 1920;
  static double defaultSize = 21;
  static MediaQueryData _mediaQueryData;
  static double pixelRatio;
  static double screenWidth;
  static double screenHeight;
  static double defaultHeight;
  static double defaultWidth;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    pixelRatio = _mediaQueryData.devicePixelRatio;
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    defaultHeight = defaultSize * screenHeight / heightInPx;
    defaultWidth = defaultSize * screenWidth / widthInPx;
  }
}
