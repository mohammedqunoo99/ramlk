library home_state;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
// import 'package:ramlk/model/Store/store.dart';
import 'package:ramlk/model/blogs_model/blogs_data_model.dart';
import 'package:ramlk/model/categories_model/categories_model.dart';
import 'package:ramlk/model/product_model/product_model.dart';
import 'package:ramlk/model/slider_model/slider_model.dart';
import 'package:ramlk/model/user_model/user_data.dart';
// import 'package:ramlk/model/watch_model/watch_model.dart';


part 'home_state.g.dart';

abstract class HomeState implements Built<HomeState, HomeStateBuilder> {
  // fields go here

  String get error;

  bool get isLoading;

  @nullable
  SliderModel get  sliders;
  @nullable
  BlogsDataModel get  allBlogs;
  @nullable
  CategoriesModel get  categoriesModel;
  @nullable
  CategoriesModel get  servicesModel;
  @nullable
  ProductModel get products;
  @nullable
  ProductModel get recentProducts;
  bool get logout;
  bool get success;
  @nullable
  UserData get user;
  bool get isLogin;
  int get appLanguage;

  // @nullable
  // BuiltList<WatchModel>  get watch;
  //
  // @nullable
  // BuiltList<WatchModel>  get dress;
  //
  // @nullable
  // BuiltList<WatchModel>  get perfumes;
  @nullable
  String get currency;






  HomeState._();

  factory HomeState([updates(HomeStateBuilder b)]) = _$HomeState;

  factory HomeState.initail() {
    return HomeState((b) => b
      ..error = ""
      ..isLoading = false
      ..logout=false
      ..success=false
      ..user=null
      ..isLogin=false
      ..sliders = null
      ..allBlogs = null
      ..currency=""
      ..categoriesModel = null
      ..servicesModel = null

      ..products = null
      ..recentProducts = null
      ..appLanguage=0

    );

  }
}
