part of core;

class PrefsCore extends ChangeNotifier {
  static SharedPreferences? _prefs;

  PrefsCore() {
    init().then((value) => _prefs=value);
  }

  // call this method from iniState() function of mainApp().
  Future<SharedPreferences> init() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs!;
  }

  Future<bool> setString(String key, String value) async =>
      await _prefs!.setString(key, value);

  String? getString(String key) => _prefs!.getString(key);
}
