library blogs_data_model;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ramlk/model/serializer/serializer.dart';

import 'blogs_page.dart';

part 'blogs_data_model.g.dart';


abstract class BlogsDataModel implements Built<BlogsDataModel, BlogsDataModelBuilder> {

  String get message;

  BlogsPage get data;

  BlogsDataModel._();


  factory BlogsDataModel([updates(BlogsDataModelBuilder b)]) = _$BlogsDataModel;

  String toJson() {
    return json.encode(serializers.serializeWith(BlogsDataModel.serializer, this));
  }

  static BlogsDataModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        BlogsDataModel.serializer, json.decode(jsonString));
  }

  static Serializer<BlogsDataModel> get serializer => _$blogsDataModelSerializer;
}
