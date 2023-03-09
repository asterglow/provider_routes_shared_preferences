import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
 ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue,
      colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Colors.blue,
          onPrimary: Colors.white,
          secondary: Colors.blueAccent,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.grey,
          onBackground: Colors.white,
          surface: Colors.grey,
          onSurface: Colors.black));

  ThemeData darkTheme = ThemeData.dark();

class SettingsModel with ChangeNotifier {
  Color _appBarColor = Colors.blue;

  Color get appBarColor => _appBarColor;

  set appBarColor(Color color) {
    _appBarColor = color;
    notifyListeners();
  }

SettingsModel(){
_loadPrefsSettings();
}

 bool _darkTheme = false;
 SharedPreferences? _preferences;

 bool get darkTheme => _darkTheme;

 _initializePrefs() async {
  _preferences??= await SharedPreferences.getInstance();
 }

 _loadPrefsSettings() async{
await _initializePrefs();
_darkTheme = _preferences?.getBool('darkThemeKey')?? false ;
notifyListeners();
 }

 _saveSettingsPrefs() async{
  await _initializePrefs();
  _preferences?.setBool('darkThemeKey', _darkTheme);
 }

 void toggleTheme(){
_darkTheme = !_darkTheme ;
_saveSettingsPrefs();
notifyListeners();
 }
}
