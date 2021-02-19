import 'dart:io';
//
// import 'package:maiel/model/Store/store.dart';
// import 'package:maiel/model/about/about.dart';
// import 'package:maiel/model/base_response/base_response.dart';
// import 'package:maiel/model/base_sub_response/base_sub_response.dart';
// import 'package:maiel/model/blogs_model/blogs_data_model.dart';
// import 'package:maiel/model/cart_model/base_cart.dart';
// import 'package:maiel/model/categories_model/categories_model.dart';
// import 'package:maiel/model/currency_model/currency_model.dart';
// import 'package:maiel/model/favorite_model/favorite_model.dart';
// import 'package:maiel/model/notification/notification.dart';
// import 'package:maiel/model/notification/notification_model.dart';
// import 'package:maiel/model/orders_model/base_orders.dart';
// import 'package:maiel/model/orders_model/order_model.dart';
// import 'package:maiel/model/product_category_model/product_category_model.dart';
// import 'package:maiel/model/product_model/product_model.dart';
// import 'package:maiel/model/slider_model/slider_model.dart';
import 'package:built_collection/src/list.dart';
import 'package:ramlk/model/user_model/user_model.dart';

//
// import 'package:maiel/model/rates/rates.dart';
// import 'package:maiel/model/user_model/user_data.dart';
// import 'package:maiel/model/user_model/user_model.dart';
// import 'package:built_collection/built_collection.dart';
// import 'package:maiel/model/watch_model/watch_model.dart';

import '../prefs_helper/prefs_helper.dart';

abstract class IRepository {
  Future<int> getAppLanguage();
  Future<String> GetCurrencyApp();
  Future<void> setAppLanguage(int value);
  Future<void> setCurrencyApp(String value);
  Future<bool> GetNotification();
  Future<void> setNotification(bool value);

  Future<UserModel> login(String mobile);


  // Future<SliderModel> getSlider();
  // Future<BlogsDataModel> getAllBlogs(int page);
  // Future<CategoriesModel> getCategories(String type);
  // Future<BuiltList<Store>> getAllStories();
  // Future<BaseResponse<Store>> getStoriesDetails(int storeId);
  // Future<ProductModel> getProductByValue({
  //   int pageId,
  //   int storeId,
  //   String category_id,
  //   bool discount,
  //   int newitem,
  //   String order_price,
  //   String search,
  //   List<Map>filters,
  //   String price_from,
  //   String price_to,
  //   int discount_percentage,
  //
  // });

  // Future<ProductCategoryModel> getProductsCategories(int categoryId, String type,int page,{int best_seller,int newitem,int price_to,String order_date});


  Future<bool> getIsLogin();
  //
  // Future<UserModel> login(String mobile, String password);
  Future<UserModel> register(String full_name,
      String email,String mobile);

  Future<bool> logout();
  // Future<UserData> getUser();
  // Future<void> saveUser(UserData user, String token);

  // Future<UserModel> getProfile();
  // Future<UserModel> editProfile(
  //     String email, String full_name, File image);

  // Future<Rates> getRates();
  Future<bool> setRates(double value,String comment,String parent_type);
  Future<bool> resetPassword(String old_password, String password, String password_confirmation);

  // Future<BaseOrders> getOrders(int page);
  // Future<FavoriteModel>getFavorite(int page);
  Future<bool> insertFavorite(int id,String parent_type);
  Future<bool> addToCart(int parent_id,String parent_type,int qty);

  // Future<BaseCart> getCart();

  Future<bool> deleteFromCart(int parent_id,String parent_type,int qty);
  Future<bool> confirmCart();
  Future<bool>contactUs( String name,String mail,String title,String message);
  Future<bool> updateToken(String firebase_token);
  // Future<NotificationModel> getNotfication(int page);
  // Future<About> getAboutus();
  Future<bool> forgetPassword(String mobile);
  Future<bool> forgetPasswordConfirm(String mobile,String reset_code,String status);
  Future<bool> changePassword(String mobile,String password,String password_confirmation);
  // Future<BuiltList<WatchModel>> getfilter(String category);
  // Future<ProductCategoryModel> searchservices(
  //     int categoryId,String search
  //     );

  // Future<CurrencyModel> getCurrency();


  Future<bool>settings( {String lang,String currency,String notification_status});





}
