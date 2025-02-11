import 'package:injectable/injectable.dart';
import 'package:king/data/shared/shared_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: SharedService)
class SharedServiceImpl extends SharedService {
  SharedServiceImpl(this._shared);

  final SharedPreferences _shared;

  @override
  Future<bool> setValueString(String key, String value) =>
      _shared.setString(key, value);

  @override
  String getValueString(String key) => _shared.getString(key) ?? '';

  @override
  Future<bool> setValueInt(String key, int value) => _shared.setInt(key, value);

  @override
  int getValueInt(String key) => _shared.getInt(key) ?? 0;

  @override
  Future<bool> setValueBool(String key, bool value) =>
      _shared.setBool(key, value);

  @override
  bool getValueBool(String key) => _shared.getBool(key) ?? false;

  @override
  Future<bool> clearShared(String key) async {
    return await _shared.remove(key);
  }
}
