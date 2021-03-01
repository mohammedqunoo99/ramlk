library slider_list;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ramlk/model/product_model/product_list.dart';
import 'package:ramlk/model/serializer/serializer.dart';

part 'slider_list.g.dart';

abstract class SliderList implements Built<SliderList, SliderListBuilder> {
  // fields go here

  @nullable
  int get id;

  @nullable
  String get name;

  @nullable
  String get category_id;

  @nullable

  @nullable
  String get status;

  @nullable
  int get price;


  @nullable
  String get description;

  String get image;
  @nullable
  String get slider;
  @nullable
  ProductList get products;








  SliderList._();

  factory SliderList([updates(SliderListBuilder b)]) = _$SliderList;

  String toJson() {
    return json.encode(serializers.serializeWith(SliderList.serializer, this));
  }

  static SliderList fromJson(String jsonString) {
    return serializers.deserializeWith(
        SliderList.serializer, json.decode(jsonString));
  }

  static Serializer<SliderList> get serializer => _$sliderListSerializer;
}
