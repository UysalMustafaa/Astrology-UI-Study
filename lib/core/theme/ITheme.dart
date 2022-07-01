import 'package:astrology/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

abstract class ITheme {
  ThemeData get data;
  final colors = ColorConstants();
  TextStyle get homePageHeaderTextStyle;
  double deviceScreenScale(
      {@required double scaleFactor, @required BuildContext context});
  double textScaleFactorFromFontSize(
      {@required double fontSize, @required BuildContext context});
}
