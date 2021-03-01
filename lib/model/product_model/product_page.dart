library product_page;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ramlk/model/product_model/product_list.dart';
import '../serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';


part 'product_page.g.dart';


abstract class ProductPage implements Built<ProductPage, ProductPageBuilder> {

  int get last_page;
  @nullable
  BuiltList<ProductList> get data;

  ProductPage._();


  factory ProductPage([updates(ProductPageBuilder b)]) = _$ProductPage;

  String toJson() {
    return json.encode(serializers.serializeWith(ProductPage.serializer, this));
  }

  static ProductPage fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProductPage.serializer, json.decode(jsonString));
  }

  static Serializer<ProductPage> get serializer => _$productPageSerializer;
}
