import 'package:ecom_bloc/common/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  late final SharedPreferences _pref;

  Future<StorageService> initialize() async {
    _pref = await SharedPreferences.getInstance();
    return this;
  }

  Future<bool> setBool(
    String key,
    bool value,
  ) async {
    return await _pref.setBool(
      key,
      value,
    );
  }

  Future<bool> setString(
    String key,
    String value,
  ) async {
    return await _pref.setString(
      key,
      value,
    );
  }

  bool deviceStore() {
    return _pref.getBool(
          AppConstant.storagedevicefirsttime,
        ) ??
        false;
  }

  bool getLoggedIn() {
    return _pref.getString(AppConstant.storageusertokenkey) == null
        ? false
        : true;
  }
}
