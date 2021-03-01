library slider_model;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ramlk/model/serializer/serializer.dart';
import 'package:ramlk/model/slider_model/slider_list.dart';
part 'slider_model.g.dart';

abstract class SliderModel implements Built<SliderModel, SliderModelBuilder> {
  // fields go here


  String get message;

  BuiltList<SliderList> get data;

  SliderModel._();

  factory SliderModel([updates(SliderModelBuilder b)]) = _$SliderModel;

  String toJson() {
    return json.encode(serializers.serializeWith(SliderModel.serializer, this));
  }

  static SliderModel fromJson(String jsonString) {
    return serializers.deserializeWith(SliderModel.serializer, json.decode(jsonString));
  }

  static Serializer<SliderModel> get serializer => _$sliderModelSerializer;
}