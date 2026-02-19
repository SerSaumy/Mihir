import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static const String _keyTheme = 'theme';
  static const String _keyLanguage = 'language';
  static const String _keyDownloadPath = 'download_path';
  static const String _keyAutoUpdate = 'auto_update';
  static const String _keyUpdateInterval = 'update_interval';
  static const String _keyExtensionRepos = 'extension_repos';

  static const String _defaultExtensionRepo =
      'https://raw.githubusercontent.com/keiyoushi/extensions/repo/index.min.json';

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

  /// Extension repositories (index.json URLs)
  ///
  /// Always ensures the default Keiyoushi repo is present.
  List<String> getExtensionRepos() {
    final raw = _prefs.getString(_keyExtensionRepos);
    final defaults = <String>[_defaultExtensionRepo];

    if (raw == null || raw.isEmpty) {
      return defaults;
    }

    try {
      final decoded = jsonDecode(raw);
      final list = (decoded as List).cast<String>();
      if (list.isEmpty) return defaults;
      final merged = {...list, _defaultExtensionRepo}.toList();
      return merged;
    } catch (_) {
      return defaults;
    }
  }

  Future<bool> setExtensionRepos(List<String> urls) async {
    final unique =
        urls.map((e) => e.trim()).where((e) => e.isNotEmpty).toSet().toList();
    return _prefs.setString(_keyExtensionRepos, jsonEncode(unique));
  }

  Future<bool> addExtensionRepo(String url) async {
    final current = getExtensionRepos();
    final trimmed = url.trim();
    if (trimmed.isEmpty) return false;
    if (current.contains(trimmed)) return true;
    current.add(trimmed);
    return setExtensionRepos(current);
  }
}
