library categories_list;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ramlk/model/serializer/serializer.dart';

part 'categories_list.g.dart';

abstract class CategoriesList implements Built<CategoriesList, CategoriesListBuilder> {
  // fields go here

  @nullable
  int get id;
  @nullable
  String get slug;
  @nullable
  String get name;
  @nullable
  String get type;
  @nullable
  String get category_id;
  @nullable
  int get status;
  @nullable
  String get description;
  @nullable
  String get image;
  @nullable
  BuiltList<CategoriesList> get categories;


  CategoriesList._();

  factory CategoriesList([updates(CategoriesListBuilder b)]) = _$CategoriesList;

  String toJson() {
    return json.encode(serializers.serializeWith(CategoriesList.serializer, this));
  }

  static CategoriesList fromJson(String jsonString) {
    return serializers.deserializeWith(
        CategoriesList.serializer, json.decode(jsonString));
  }

  static Serializer<CategoriesList> get serializer => _$categoriesListSerializer;
}
