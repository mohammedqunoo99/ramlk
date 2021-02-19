import 'package:ramlk/core/app_language.dart';
import 'package:ramlk/core/base_widget/constent.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'iprefs_helper.dart';
// import 'package:maiel/model/user_model/user_data.dart';


class PrefsHelper implements IPrefsHelper {
  @override
  Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  @override
  Future<int> getAppLanguage() async {
    return (await getPrefs()).getInt(APP_LANGUAGE) ?? AppLanguageKeys.EN;
  }

  @override
  Future<void> setAppLanguage(int value) async {
    (await getPrefs()).setInt(APP_LANGUAGE, value);
  }


  @override
  Future<String> getToken() async {
    return ((await getPrefs()).getString(TOKEN));
  }

  @override
  Future<int> getUserId() async {
    return ((await getPrefs()).getInt(ID));
  }


  @override
  Future<bool> getIsLogin() async {
    // TODO: implement getIsLogin
    return (await getPrefs()).getBool(IS_LOGIN) ?? false;
  }



  Future<String> getMobileNumber() async {
    // TODO: implement getToken
    return ((await getPrefs()).getString(MOBILE));
  }

  @override
  // Future<void> saveUser(UserData user, String token,bool active) async {
  //   // TODO: implement saveUser
  //   (await getPrefs()).setInt(ID, user.id);
  //   (await getPrefs()).setString(NAME, user.full_name ?? "");
  //   (await getPrefs()).setString(MOBILE, user.mobile ?? "");
  //   (await getPrefs()).setString(EMAIL, user.email ?? "");
  //   (await getPrefs()).setString(IMAGE, user.image ?? "");
  //   (await getPrefs()).setString(TOKEN, "Bearer $token");
  //   if(active){
  //     (await getPrefs()).setBool(IS_LOGIN, true);
  //   }
  //
  // }

  @override
  // Future<UserData> getUser() async {
  //   String name = (await getPrefs()).getString(NAME) ?? "Full Name";
  //   String email = (await getPrefs()).getString(EMAIL) ?? "Email";
  //   String image = (await getPrefs()).getString(IMAGE) ?? "";
  //   int id = (await getPrefs()).getInt(ID);
  //   String phone = (await getPrefs()).getString(MOBILE) ?? "";
  //
  //   UserData user = UserData((b) => b
  //     ..full_name = name
  //     ..email = email
  //     ..image = image
  //     ..id = id
  //     ..phone = phone
  //   );
  //   return user;
  // }



  @override
  Future<bool> logout() async{
    // TODO: implement logout
    (await getPrefs()).setBool(IS_LOGIN, false);
  }

  @override
  Future<void> setIsLogin() async{
    // TODO: implement setIsLogin
    (await getPrefs()).setBool(IS_LOGIN, true);
  }

  @override
  Future<String> getCurrency() async{
    // TODO: implement getCurrency
    return (await getPrefs()).getString(APP_Currency) ?? 'USD';
  }

  @override
  Future<void> setCurrency(String value)async {
    // TODO: implement setCurrency
    (await getPrefs()).setString(APP_Currency, value);
  }

  @override
  Future<bool> getNotification() async{
    // TODO: implement getCurrency
    return (await getPrefs()).getBool(NOTIFI) ?? false;
  }

  @override
  Future<void> setNotification(bool value)async {
    // TODO: implement setCurrency
    (await getPrefs()).setBool(NOTIFI, value);
  }
}
