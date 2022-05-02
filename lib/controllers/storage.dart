import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  save(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(key, [value]);
  }

  read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key);
  }
}
