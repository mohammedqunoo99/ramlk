
library categories_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ramlk/model/serializer/serializer.dart';
import 'package:ramlk/model/categories_model/categories_list.dart';
part 'categories_model.g.dart';

abstract class CategoriesModel implements Built<CategoriesModel, CategoriesModelBuilder> {
  // fields go here


  String get message;

  BuiltList<CategoriesList> get data;

  CategoriesModel._();

  factory CategoriesModel([updates(CategoriesModelBuilder b)]) = _$CategoriesModel;

  String toJson() {
    return json.encode(serializers.serializeWith(CategoriesModel.serializer, this));
  }

  static CategoriesModel fromJson(String jsonString) {
    return serializers.deserializeWith(CategoriesModel.serializer, json.decode(jsonString));
  }

  static Serializer<CategoriesModel> get serializer => _$categoriesModelSerializer;
}