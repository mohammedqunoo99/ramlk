library serializer;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
// import 'package:maiel/model/Store/store.dart';
// import 'package:maiel/model/about/about.dart';
// import 'package:maiel/model/base_response/base_response.dart';
// import 'package:maiel/model/base_sub_response/base_sub_response.dart';
// import 'package:maiel/model/blogs_model/blogs_data_model.dart';
// import 'package:maiel/model/blogs_model/blogs_details.dart';
// import 'package:maiel/model/blogs_model/blogs_page.dart';
// import 'package:maiel/model/cart_model/base_cart.dart';
// import 'package:maiel/model/cart_model/cart_model.dart';
// import 'package:maiel/model/categories_model/categories_list.dart';
// import 'package:maiel/model/categories_model/categories_model.dart';
// import 'package:maiel/model/currency_model/currency_list.dart';
// import 'package:maiel/model/currency_model/currency_model.dart';
// import 'package:maiel/model/favorite_model/favorite_list.dart';
// import 'package:maiel/model/favorite_model/favorite_model.dart';
// import 'package:maiel/model/notification/meta.dart';
// import 'package:maiel/model/notification/notification.dart';
// import 'package:maiel/model/notification/notification_model.dart';
// import 'package:maiel/model/orders_model/base_orders.dart';
// import 'package:maiel/model/orders_model/details_model.dart';
// import 'package:maiel/model/orders_model/order_model.dart';
// import 'package:maiel/model/pivot/pivot.dart';
// import 'package:maiel/model/product_category_model/product_category_list.dart';
// import 'package:maiel/model/product_category_model/product_category_model.dart';
// import 'package:maiel/model/product_model/product_list.dart';
// import 'package:maiel/model/product_model/product_model.dart';
// import 'package:maiel/model/product_model/product_options.dart';
// import 'package:maiel/model/product_model/product_page.dart';
//
// import 'package:maiel/model/slider_model/slider_list.dart';
// import 'package:maiel/model/slider_model/slider_model.dart';
// import 'package:maiel/model/rates/rates.dart';
// import 'package:ramlk/model/rates/rates_model.dart';
// import 'package:maiel/model/roles/roles.dart';
// import 'package:maiel/model/user_model/user_data.dart';
// import 'package:maiel/model/user_model/user_model.dart';
// import 'package:maiel/model/watch_model/values_model.dart';
// import 'package:maiel/model/watch_model/watch_model.dart';
part 'serializer.g.dart';

@SerializersFor(const [
      // UserData,
  // SliderModel,
  // SliderList,
  // BlogsDataModel,
  // BlogsDetails,
  // BlogsPage,
  // CategoriesModel,
  // ProductList,
  // ProductOptions,
  // ProductModel,
  // ProductPage,
  // CategoriesList,
  // Store,
  // Pivot,
  // Roles,
  // UserData,
  // Rates,
  // BaseSubResponse,
  // RatesModel,
  // OrderModel,
  // BaseOrders,
  // DetailsModel,
  // ProductCategoryModel,
  // ProductCategoryList,
  // FavoriteList,
  // FavoriteModel,
  // BaseCart,
  // CartModel,
  // Notification,
  // NotificationModel,
  // Meta,
  // About,
  // ValuesModel,
  // WatchModel,
  // UserModel,
  // CurrencyModel,
  // CurrencyList
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())




)
    .build();
