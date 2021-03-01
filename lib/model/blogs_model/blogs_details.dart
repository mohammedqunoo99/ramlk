library blogs_details;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import '../serializer/serializer.dart';

part 'blogs_details.g.dart';

abstract class BlogsDetails
    implements Built<BlogsDetails, BlogsDetailsBuilder> {
  @nullable
  int get id;

  @nullable
  String get image;

  @nullable
  String get name;

  @nullable
  String get description;

  @nullable
  String get status;

  @nullable
  String get created_at;

  @nullable
  String get updated_at;

  BlogsDetails._();

  factory BlogsDetails([updates(BlogsDetailsBuilder b)]) = _$BlogsDetails;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BlogsDetails.serializer, this));
  }

  static BlogsDetails fromJson(String jsonString) {
    return serializers.deserializeWith(
        BlogsDetails.serializer, json.decode(jsonString));
  }

  static Serializer<BlogsDetails> get serializer => _$blogsDetailsSerializer;
}
