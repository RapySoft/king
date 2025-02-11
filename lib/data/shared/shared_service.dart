abstract class SharedService {
  Future<bool> clearShared(String key);

  Future<bool> setValueString(String key, String value);

  String getValueString(String key);

  Future<bool> setValueInt(String key, int value);

  int getValueInt(String key);

  Future<bool> setValueBool(String key, bool value);

  bool getValueBool(String key);
}
