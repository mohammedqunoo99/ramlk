library product_list;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ramlk/model/product_model/product_options.dart';
import 'package:ramlk/model/serializer/serializer.dart';

part 'product_list.g.dart';

abstract class ProductList implements Built<ProductList, ProductListBuilder> {
  // fields go here

  @nullable
  int get id;
  @nullable
  String get name;
  @nullable
  String get type;
  @nullable
  int get category_id;
  @nullable
  int get status;
  @nullable
  @BuiltValueField(wireName: "new")
  int get news;
  @nullable
  int get price;
  @nullable
  int get old_price;
  @nullable
  int get best_seller;
  @nullable
  int get best_price;
  @nullable
  int get auction;
  @nullable
  int get user_id;
  @nullable
  double get percentage;
  @nullable
  String get product;
  @nullable
  String get description;
  @nullable
  String get image;
  @nullable
  BuiltList<String> get images;
  @nullable
  String get slug;
  @nullable
  String get color;
  @nullable
  String get option_category;
  BuiltList<ProductOptions> get product_options;
  @nullable
  int get gender;

  ProductList._();

  factory ProductList([updates(ProductListBuilder b)]) = _$ProductList;

  String toJson() {
    return json.encode(serializers.serializeWith(ProductList.serializer, this));
  }

  static ProductList fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProductList.serializer, json.decode(jsonString));
  }

  static Serializer<ProductList> get serializer => _$productListSerializer;
}
