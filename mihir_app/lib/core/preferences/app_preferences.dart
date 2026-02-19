import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static const String _keyTheme = 'theme';
  static const String _keyLanguage = 'language';
  static const String _keyDownloadPath = 'download_path';
  static const String _keyAutoUpdate = 'auto_update';
  static const String _keyUpdateInterval = 'update_interval';

  final SharedPreferences _prefs;

  AppPreferences(this._prefs);

  // Theme
  String? getTheme() => _prefs.getString(_keyTheme);
  Future<bool> setTheme(String theme) => _prefs.setString(_keyTheme, theme);

  // Language
  String? getLanguage() => _prefs.getString(_keyLanguage);
  Future<bool> setLanguage(String lang) =>
      _prefs.setString(_keyLanguage, lang);

  // Download path
  String? getDownloadPath() => _prefs.getString(_keyDownloadPath);
  Future<bool> setDownloadPath(String path) =>
      _prefs.setString(_keyDownloadPath, path);

  // Auto update
  bool getAutoUpdate() => _prefs.getBool(_keyAutoUpdate) ?? false;
  Future<bool> setAutoUpdate(bool value) =>
      _prefs.setBool(_keyAutoUpdate, value);

  // Update interval (hours)
  int getUpdateInterval() => _prefs.getInt(_keyUpdateInterval) ?? 24;
  Future<bool> setUpdateInterval(int hours) =>
      _prefs.setInt(_keyUpdateInterval, hours);
}
