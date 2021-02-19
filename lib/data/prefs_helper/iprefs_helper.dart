import 'package:shared_preferences/shared_preferences.dart';
// import 'package:maiel/model/user_model/user_data.dart';

import 'prefs_helper.dart';

abstract class IPrefsHelper {
  Future<SharedPreferences> getPrefs();

  Future<int> getAppLanguage();
  Future<String> getCurrency();
  Future<void> setAppLanguage(int value);
  Future<void> setCurrency(String value);
  Future<String> getToken();
  Future<int> getUserId();


  // Future<void> saveUser(UserData user,String token,bool active);
  Future<bool> getIsLogin();
  Future<void> setIsLogin();
  Future<bool> logout();
  // Future<UserData> getUser();
  Future<bool> getNotification();
  Future<void> setNotification(bool value);

}
