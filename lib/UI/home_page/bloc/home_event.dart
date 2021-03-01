library home_event;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'home_event.g.dart';

abstract class HomeEvent {}

abstract class ClearError extends HomeEvent
    implements Built<ClearError, ClearErrorBuilder> {
  // fields go here

  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}
abstract class GetLanguage extends HomeEvent
    implements Built<GetLanguage, GetLanguageBuilder> {
  // fields go here

  GetLanguage._();

  factory GetLanguage([updates(GetLanguageBuilder b)]) = _$GetLanguage;
}




abstract class GetSliders extends HomeEvent
    implements Built<GetSliders, GetSlidersBuilder> {
  // fields go here


  GetSliders._();

  factory GetSliders([updates(GetSlidersBuilder b)]) = _$GetSliders;
}


















































abstract class GetAllBlogs extends HomeEvent
    implements Built<GetAllBlogs, GetAllBlogsBuilder> {
  int get page;

  GetAllBlogs._();

  factory GetAllBlogs([updates(GetAllBlogsBuilder b)]) = _$GetAllBlogs;

}
abstract class GetStories extends HomeEvent
    implements Built<GetStories, GetStoriesBuilder> {
  // fields go here

  GetStories._();

  factory GetStories([updates(GetStoriesBuilder b)]) = _$GetStories;
}

abstract class GetAllCategories extends HomeEvent
    implements Built<GetAllCategories, GetAllCategoriesBuilder> {
  String get type;

  GetAllCategories._();

  factory GetAllCategories([updates(GetAllCategoriesBuilder b)]) = _$GetAllCategories;
}
abstract class GetAllProducts extends HomeEvent
    implements Built<GetAllProducts, GetAllProductsBuilder> {
  int get is_new;

  GetAllProducts._();

  factory GetAllProducts([updates(GetAllProductsBuilder b)]) = _$GetAllProducts;
}

abstract class LogOut extends HomeEvent implements Built<LogOut, LogOutBuilder> {
  // fields go here

  LogOut._();

  factory LogOut([updates(LogOutBuilder b)]) = _$LogOut;
}
abstract class GetUserData extends HomeEvent implements Built<GetUserData, GetUserDataBuilder> {
  // fields go here

  GetUserData._();

  factory GetUserData([updates(GetUserDataBuilder b)]) =
  _$GetUserData;
}
abstract class GetIsLogin extends HomeEvent implements Built<GetIsLogin,GetIsLoginBuilder> {
  // fields go here



  GetIsLogin._();

  factory GetIsLogin([updates(GetIsLoginBuilder b)]) = _$GetIsLogin;
}
abstract class ChangeStatus extends HomeEvent implements Built<ChangeStatus, ChangeStatusBuilder> {
  // fields go here

  ChangeStatus._();

  factory ChangeStatus([updates(ChangeStatusBuilder b)]) = _$ChangeStatus;
}

abstract class GetFilter extends HomeEvent
    implements Built<GetFilter, GetFilterBuilder> {
  String get type;

  GetFilter._();

  factory GetFilter([updates(GetFilterBuilder b)]) = _$GetFilter;
}


abstract class GetCurrencyApp extends HomeEvent
    implements Built<GetCurrencyApp, GetCurrencyAppBuilder> {
  GetCurrencyApp._();

  factory GetCurrencyApp([updates(GetCurrencyAppBuilder b)]) = _$GetCurrencyApp;
}
