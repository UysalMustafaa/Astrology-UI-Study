import 'package:astrology/core/theme/ITheme.dart';
import 'package:flutter/material.dart';

class DarkTheme extends ITheme {
  static DarkTheme _instance;

  static DarkTheme get instance {
    if (_instance != null) return _instance;
    _instance = DarkTheme._init();
    return _instance;
  }

  DarkTheme._init();

  final ThemeData _darkTheme = ThemeData.light();

  @override
  ThemeData get data => ThemeData(
      appBarTheme: _darkTheme.appBarTheme,
      colorScheme: _darkTheme.colorScheme,
      inputDecorationTheme: _darkTheme.inputDecorationTheme.copyWith());

  @override
  double textScaleFactorFromFontSize({double fontSize, BuildContext context}) {
    switch (fontSize?.toInt()) {
      case 13:
        {
          return 0.0025;
        }
      case 14:
        {
          return 0.0025;
        }
      default:
        {
          return 0.0025;
        }
    }
  }

  @override
  TextStyle get homePageHeaderTextStyle => throw UnimplementedError();

  @override
  double deviceScreenScale({double scaleFactor, BuildContext context}) {
    throw UnimplementedError();
  }

  @override
  // TODO: implement cardPickTextStyle
  TextStyle get cardPickTextStyle => throw UnimplementedError();
}
