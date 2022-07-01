import 'package:astrology/core/theme/ITheme.dart';
import 'package:astrology/core/theme/dark_theme.dart';
import 'package:astrology/core/theme/light_theme.dart';
import 'package:flutter/cupertino.dart';

enum AppTheme { DARK, LIGHT }

extension AppThemeExtension on AppTheme {
  String get appThemeToString {
    switch (this) {
      case AppTheme.DARK:
        return 'AppTheme.DARK';
      case AppTheme.LIGHT:
        return 'AppTheme.LIGHT';
      default:
        {
          return 'AppTheme.LIGHT';
        }
    }
  }
}

extension AppThemeStringExtension on String {
  AppTheme get stringToAppTheme {
    switch (this) {
      case 'AppTheme.DARK':
        return AppTheme.DARK;
      case 'AppTheme.LIGHT':
        return AppTheme.LIGHT;
      default:
        {
          return AppTheme.LIGHT;
        }
    }
  }
}

class ThemeViewModel with ChangeNotifier {
  static AppTheme _currentTheme = AppTheme.LIGHT;

  static ITheme get theme => _currentTheme == AppTheme.LIGHT
      ? LightTheme.instance
      : DarkTheme.instance;

  AppTheme get currentTheme {
    return _currentTheme;
  }

  /* set currentTheme(AppTheme value) {
    _currentTheme = value;
    writeDataToPhone();
    notifyListeners();
  }

  Future<void> writeDataToPhone() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('appTheme', currentTheme.toString());
  }

  Future<AppTheme> readDataToPhone() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('appTheme').stringToAppTheme;
  }*/
}
