library product_options;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ramlk/model/serializer/serializer.dart';

part 'product_options.g.dart';

abstract class ProductOptions implements Built<ProductOptions, ProductOptionsBuilder> {
  // fields go here

  @nullable
  int get id;
  @nullable
  String get product_id;
  @nullable
  String get option;
  @nullable
  String get value;

  ProductOptions._();

  factory ProductOptions([updates(ProductOptionsBuilder b)]) = _$ProductOptions;

  String toJson() {
    return json.encode(serializers.serializeWith(ProductOptions.serializer, this));
  }

  static ProductOptions fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProductOptions.serializer, json.decode(jsonString));
  }

  static Serializer<ProductOptions> get serializer => _$productOptionsSerializer;
}
