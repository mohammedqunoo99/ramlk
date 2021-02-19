import 'dart:io';

import 'package:built_collection/src/list.dart';
// import 'package:maiel/data/http_helper/Ihttp_helper.dart';
// import 'package:maiel/data/prefs_helper/iprefs_helper.dart';
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
//
// import 'package:maiel/model/rates/rates.dart';
// import 'package:maiel/model/user_model/user_data.dart';
// import 'package:maiel/model/user_model/user_model.dart';
// import 'package:maiel/model/watch_model/watch_model.dart';
//

import 'irepository.dart';

// class Repository implements IRepository {
//   IHttpHelper _ihttpHelper;
//   IPrefsHelper _iprefHelper;
//
//   Repository(this._ihttpHelper, this._iprefHelper);
//
//   @override
//   Future<int> getAppLanguage() async {
//     return await _iprefHelper.getAppLanguage();
//   }
//
//   @override
//   Future<BlogsDataModel> getAllBlogs(int page) async {
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//     final products = await _ihttpHelper.getAllBlogs(page,language);
//     return products;
//   }
//
//   @override
//   Future<void> setAppLanguage(int value) async {
//     await _iprefHelper.setAppLanguage(value);
//   }
//   @override
//   Future<void> setNotification(bool value) async {
//     await _iprefHelper.setNotification(value);
//   }
//   @override
//   Future<bool> GetNotification() async {
//     return await _iprefHelper.getNotification();
//   }
//
//   @override
//   Future<SliderModel> getSlider() async {
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     print("english:"+app_language.toString());
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//     final data = await _ihttpHelper.getSlider(language);
//     return data;
//   }
//
//   @override
//   Future<CategoriesModel> getCategories(String type) async {
//     // TODO: implement getCategories
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//     final categories = await _ihttpHelper.getCategories(type,language);
//     return categories;
//   }
//
//
//   @override
//   Future<BuiltList<Store>> getAllStories() async {
//     final token = await _iprefHelper.getToken();
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//     final stories = await _ihttpHelper.getAllStories(
//         token ?? "Bearer 1|4SUEACDqD9hBuNSNYE3eJay8WMcX87DngIr0xjMJ",language);
//     return stories;
//   }
//
//   @override
//   Future<BaseResponse<Store>> getStoriesDetails(int storeId) async {
//     final token = await _iprefHelper.getToken();
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//     final store = await _ihttpHelper.getStoriesDetails(
//         token ?? "Bearer 1|4SUEACDqD9hBuNSNYE3eJay8WMcX87DngIr0xjMJ", storeId,language);
//     return store;
//   }
//
//   @override
//   Future<ProductModel> getProductByValue({
//     int pageId,
//     int storeId,
//     String category_id,
//     bool discount,
//     int newitem,
//     String order_price,
//     String search,
//
//     List<Map>filters,
//     String price_from,
//     String price_to,
//     int discount_percentage,
//   }) async {
//     // TODO: implement getProductByValue
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//     final products = await _ihttpHelper.getProductByValue(
//         pageId: pageId,
//         storeId:storeId,
//         category_id:category_id,
//         discount:discount,
//         newitem:newitem,
//         order_price:order_price,
//         search: search,
//         filters:filters,
//         price_from:price_from,
//         price_to:price_to,
//         discount_percentage:discount_percentage,
//         language:language
//     );
//     return products;
//   }
//
//
//
//
//
//
//
//   @override
//   Future<bool> getIsLogin() async {
//     // TODO: implement getIsLogin
//     return await _iprefHelper.getIsLogin();
//   }
//
//
//   @override
//   Future<UserModel> login(String mobile, String password) async {
//     // TODO: implement login
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//     final user = await _ihttpHelper.login(mobile, password,language);
//
//     final save = await _iprefHelper.saveUser(user.data, user.token,true);
//
//     return user;
//   }
//   @override
//   Future<UserModel> register(
//       String full_name,
//       String email,
//       String password,
//       String mobile,
//       bool terms,
//       File image) async {
//     // TODO: implement register
//
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//     final user = await _ihttpHelper.register(
//         full_name, email, password, mobile, terms, image,language);
//    // final save = await _iprefHelper.saveUser(user.data, user.token,false);
//     return user;
//   }
//   @override
//   Future<bool> logout() async{
//     // TODO: implement logout
//     final appLogout = await _iprefHelper.logout();
//     return appLogout;
//   }
//   @override
//   Future<UserData> getUser() async {
//     final token = await _iprefHelper.getToken();
//     final user = await _iprefHelper.getUser();
//     return user;
//   }
//   @override
//   Future<UserModel> getProfile() async {
//     // TODO: implement login
//     final token = await _iprefHelper.getToken();
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//     final data = await _ihttpHelper.getProfile(token,language);
//
//     return data;
//   }
//   @override
//   Future<void> saveUser(UserData user, String token) async {
//     await _iprefHelper.saveUser(user, token,true);
//   }
//
//   @override
//   Future<UserModel> editProfile(
//       String email, String full_name, File image) async {
//     final token = await _iprefHelper.getToken();
//     //final mobileNumber = await _iprefHelper.getMobileNumber();
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//     final user = await _ihttpHelper.editUser(
//         email, full_name, image, token,language);
//     final save = await _iprefHelper.saveUser(user.data, user.token,true);
//     return user;
//   }
//   @override
//   Future<Rates> getRates() async {
//
//     final rates = await _ihttpHelper.getRates();
//     return rates;
//   }
//
//   @override
//   Future<bool> setRates(double value,String comment,String parent_type) async {
//     final token = await _iprefHelper.getToken();
//
//     final data = await _ihttpHelper.setRates( value, comment, parent_type,token);
//
//     return data;
//   }
//
//   @override
//   Future<bool> resetPassword(String old_password, String password, String password_confirmation) async {
//     final token = await _iprefHelper.getToken();
//     final language = await _iprefHelper.getAppLanguage();
//
//     final data = await _ihttpHelper.resetPassword( old_password, password, password_confirmation,token);
//
//     return data;
//   }
//
//   @override
//   Future<BaseOrders>  getOrders(int page) async {
//     final token = await _iprefHelper.getToken();
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//     final data = await _ihttpHelper.getOrders(page,token,language);
//
//     return data;
//
//   }
//
//
//   @override
//   Future<ProductCategoryModel> getProductsCategories(
//       int categoryId, String type,int page,{int best_seller,int newitem,int price_to,String order_date}) async {
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//     final data = await _ihttpHelper.getProductsCategories(categoryId, type,page
//     ,best_seller:best_seller,
//       newitem:newitem,
//       price_to:price_to,
//       order_date:order_date,language:language
//     );
//
//     return data;
//   }
//
//   @override
//   Future<FavoriteModel> getFavorite(int page) async {
//     final token = await _iprefHelper.getToken();
//
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//     final data = await _ihttpHelper.getFavorite(page,token,language);
//
//     return data;
//   }
//   @override
//   Future<bool> insertFavorite(int id,String parent_type) async {
//     final token = await _iprefHelper.getToken();
//     final userId = await _iprefHelper.getUserId();
//
//     return await _ihttpHelper.insertFavorite(
//        id,
//
//       parent_type,
//       token,
//     );
//   }
//
//   @override
//   Future<bool> addToCart(int parent_id,String parent_type,int qty) async {
//
//     final token = await _iprefHelper.getToken();
//     print("rrerere"+token);
//     return await _ihttpHelper.addToCart( parent_id, parent_type, qty, token);
//   }
//
//   @override
//   Future<BaseCart> getCart() async {
//     final token = await _iprefHelper.getToken();
//     return await _ihttpHelper.getCart(token);
//   }
//
//   @override
//   Future<bool> deleteFromCart(int parent_id,String parent_type,int qty) async {
//     final token = await _iprefHelper.getToken();
//     return await _ihttpHelper.deleteFromCart(parent_id,parent_type,qty, token);
//   }
//   @override
//   Future<bool> confirmCart() async {
//     final token = await _iprefHelper.getToken();
//     return await _ihttpHelper.confirmCart( token);
//   }
//
//   @override
//   Future<bool> contactUs(String name,String mail,String title,String message) async {
//     return await _ihttpHelper.contactUs(name,mail,title,message );
//
//     // var language;
//     // final app_language = await _iprefHelper.getAppLanguage();
//     // if (app_language == 1) {
//     //   language = 'en';
//     // } else {
//     //   language = 'ar';
//     // }
//
//   }
//   @override
//   Future<bool> updateToken(String firebase_token) async {
//     // TODO: implement updateToken
//     final token = await _iprefHelper.getToken();
//     return await _ihttpHelper.updateToken(firebase_token, token);
//   }
//
//   @override
//   Future<NotificationModel> getNotfication(int page) async {
//     final token = await _iprefHelper.getToken();
//     final notifications = await _ihttpHelper.getNotfication(token,page);
//     return notifications;
//   }
//
//   @override
//   Future<About> getAboutus() async {
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//
//     return await _ihttpHelper.getAboutus(language );
//
//   }
//   @override
//   Future<bool> forgetPassword(String mobile) async {
//     // TODO: implement forgetPassword
//     return await _ihttpHelper.forgetPassword(mobile);
//   }
//
//   @override
//   Future<bool> forgetPasswordConfirm(String mobile, String reset_code,String status) async {
//     // TODO: implement forgetPasswordConfirm
//     return await _ihttpHelper.forgetPasswordConfirm(mobile, reset_code,status);
//   }
//
//   @override
//   Future<bool> changePassword(String mobile, String password,String password_confirmation) async {
//     // TODO: implement forgetPasswordConfirm
//     return await _ihttpHelper.changePassword(mobile,password, password_confirmation);
//   }
//   @override
//   Future<BuiltList<WatchModel>> getfilter(String category) async {
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//     return await _ihttpHelper.getfilter(language,category);
//   }
//   @override
//
//   Future<ProductCategoryModel> searchservices(
//       int categoryId,String search)
//   async {
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//     return await _ihttpHelper.searchservices(categoryId,search,language);
//
//   }
//
//   @override
//   Future<CurrencyModel> getCurrency() async{
//     var language;
//     final app_language = await _iprefHelper.getAppLanguage();
//     if (app_language == 1) {
//       language = 'en';
//     } else {
//       language = 'ar';
//     }
//
//     return await _ihttpHelper.getCurrency(language );
//
//   }
//
//   @override
//   Future<bool> settings({String lang, String currency, String notification_status}) async{
//     final token = await _iprefHelper.getToken();
//
//     return await _ihttpHelper.settings(  token ?? "Bearer 1|4SUEACDqD9hBuNSNYE3eJay8WMcX87DngIr0xjMJ",lang:lang,currency:currency,notification_status:notification_status );
//
//   }
//
//   @override
//   Future<String> GetCurrencyApp() async{
//     // TODO: implement GetCurrency
//     return await _iprefHelper.getCurrency();
//   }
//
//   @override
//   Future<void> setCurrencyApp(String value)async {
//     // TODO: implement setCurrency
//     await _iprefHelper.setCurrency(value);
//   }
//
//
//
//
//
//
//
//
//
//
// }
