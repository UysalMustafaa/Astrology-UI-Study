import 'package:astrology/core/constants/color_constants.dart';
import 'package:astrology/core/theme/ITheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme extends ITheme {
  static LightTheme _instance;

  static LightTheme get instance {
    if (_instance != null) return _instance;
    _instance = LightTheme._init();
    return _instance;
  }

  LightTheme._init();

  final ThemeData _lightTheme = ThemeData.light();

  @override
  ThemeData get data => ThemeData(
      appBarTheme: _lightTheme.appBarTheme,
      colorScheme: _lightTheme.colorScheme.copyWith(
          primary: ColorConstants.White, secondary: ColorConstants.White),
      inputDecorationTheme: _lightTheme.inputDecorationTheme.copyWith());

  @override
  double textScaleFactorFromFontSize({double fontSize, BuildContext context}) {
    switch (fontSize?.toInt()) {
      default:
        {
          return 0.0022;
        }
    }
  }

  @override
  TextStyle get homePageHeaderTextStyle => GoogleFonts.ubuntu(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15,
      color: ColorConstants.Zanah);

  @override
  double deviceScreenScale({double scaleFactor, BuildContext context}) {
    throw UnimplementedError();
  }
}
