import 'package:astrology/core/theme/ITheme.dart';
import 'package:astrology/core/theme/theme_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

extension ContextExtension on BuildContext {
  double dynamicHeight(double value) => MediaQuery.of(this).size.height * value;
  double dynamicWidth(double value) => MediaQuery.of(this).size.width * value;
  ITheme appTheme() => ThemeViewModel.theme;
}
