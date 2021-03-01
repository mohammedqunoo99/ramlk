import 'dart:io';
import 'package:ramlk/data/http_helper/http_helper.dart';
import 'package:ramlk/data/db_helper/Idb_helper.dart';
import 'package:ramlk/data/http_helper/Ihttp_helper.dart';
import 'package:ramlk/data/prefs_helper/iprefs_helper.dart';
import 'package:ramlk/model/product_model/product_model.dart';
import 'package:ramlk/model/slider_model/slider_model.dart';
import 'package:ramlk/model/user_model/user_model.dart';
import 'irepository.dart';

class Repository implements IRepository {
  IHttpHelper _ihttpHelper;
  IPrefsHelper _iprefHelper;
  IDbHelper _iDbHelper;

  Repository(this._ihttpHelper, this._iprefHelper, this._iDbHelper);

  @override
  Future<UserModel> login(String mobile) async {
    final user = await _ihttpHelper.login(mobile);

    return user;
  }

  @override
  Future<UserModel> register(String full_name,
      String email,


      String mobile,) async {
    final user = await _ihttpHelper.register(
      full_name,
      email,

      mobile,
    );
    return user;
  }

  @override
  Future<bool> forgetPassword(String email) async {
    return await _ihttpHelper.forgetPassword(email);
  }


  Future<ProductModel> getProductByValue({
    int pageId,
    int storeId,
    String category_id,
    bool discount,
    int newitem,
    String order_price,
    String search,

    List<Map>filters,
    String price_from,
    String price_to,
    int discount_percentage,
  }) async {
    // TODO: implement getProductByValue
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
  }

  @override
  Future<SliderModel> getSlider() async {
    var language;
    final app_language = await _iprefHelper.getAppLanguage();
    print("english:" + app_language.toString());
    if (app_language == 1) {
      language = 'en';
    } else {
      language = 'ar';
    }
    final data = await _ihttpHelper.getSlider(language);
    return data;
  }
}