import 'dart:io';

import 'package:built_collection/built_collection.dart';
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
// import 'package:maiel/model/rates/rates.dart';
// import 'package:maiel/model/user_model/user_model.dart';
// import 'package:built_collection/src/list.dart';
// import 'package:maiel/model/watch_model/watch_model.dart';


abstract class IHttpHelper {
  // Future<SliderModel> getSlider(String language);
  // Future<BlogsDataModel> getAllBlogs(int page,String language);
  // Future<CategoriesModel> getCategories(String type,String language);
  // Future<BuiltList<Store>> getAllStories(String token,String language);
  // Future<BaseResponse<Store>> getStoriesDetails(String token, int storeId,String language);
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
  //   String language
  // /////////////
  //
  //  });
  //

  Future<UserModel> login(String mobile, );
  // Future<UserModel> register(String full_name,
  //     String email, String password, String mobile, bool terms, File image,String language);
  // Future<UserModel> getProfile(String token,String language);
  // Future<UserModel> editUser(String email, String full_name,
  //     File image, String token,String language);
  //
  // Future<Rates> getRates();
  // Future<bool> setRates(double value,String comment,String parent_type,String token);
  // Future<bool> resetPassword(String old_password, String password, String password_confirmation,String token);
  //
  // Future<BaseOrders> getOrders(int page,String token,String language);
  // Future<ProductCategoryModel> getProductsCategories(int categoryId, String type,int page,{int best_seller,int newitem,int price_to,String order_date,String language});
  // Future<FavoriteModel>getFavorite(int page,String token,String language);
  //
  // Future<bool> insertFavorite( int id,String parent_type, String token);
  //
  // Future<bool> addToCart(
  //     int parent_id, String parent_type, int qty, String token);
  //
  // Future<bool> deleteFromCart(
  //     int parent_id, String parent_type, int qty, String token);
  //
  // Future<BaseCart> getCart(String token);
  // Future<bool> confirmCart(
  //     String token);
  // Future<bool>contactUs( String name,String mail,String title,String message);
  // Future<bool> updateToken(String firebase_token,String token);
  // Future<NotificationModel> getNotfication(String token,int page);
  // Future<About> getAboutus(String language);
  //
  // Future<bool> forgetPassword(String mobile);
  // Future<bool> forgetPasswordConfirm(String mobile,String reset_code,String status);
  // Future<bool> changePassword(String mobile,String password,String password_confirmation);
  // Future<BuiltList<WatchModel>> getfilter(String language,String category);
  // Future<ProductCategoryModel> searchservices(
  //     int categoryId,String search,String language
  //     );
  //
  // Future<CurrencyModel> getCurrency(String language);
  //
  // Future<bool>settings( String token,{String lang,String currency,String notification_status});

}
