
library product_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ramlk/model/product_model/product_page.dart';
import 'package:ramlk/model/serializer/serializer.dart';
import 'package:ramlk/model/product_model/product_list.dart';
part 'product_model.g.dart';

abstract class ProductModel implements Built<ProductModel, ProductModelBuilder> {
  // fields go here


  String get message;

  ProductPage get data;

  ProductModel._();

  factory ProductModel([updates(ProductModelBuilder b)]) = _$ProductModel;

  String toJson() {
    return json.encode(serializers.serializeWith(ProductModel.serializer, this));
  }

  static ProductModel fromJson(String jsonString) {
    return serializers.deserializeWith(ProductModel.serializer, json.decode(jsonString));
  }

  static Serializer<ProductModel> get serializer => _$productModelSerializer;
}