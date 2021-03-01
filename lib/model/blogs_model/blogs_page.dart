library blogs_page;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'blogs_details.dart';
import '../serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';


part 'blogs_page.g.dart';


abstract class BlogsPage implements Built<BlogsPage, BlogsPageBuilder> {

  int get last_page;

  @nullable
  BuiltList<BlogsDetails> get data;

  BlogsPage._();


  factory BlogsPage([updates(BlogsPageBuilder b)]) = _$BlogsPage;

  String toJson() {
    return json.encode(serializers.serializeWith(BlogsPage.serializer, this));
  }

  static BlogsPage fromJson(String jsonString) {
    return serializers.deserializeWith(
        BlogsPage.serializer, json.decode(jsonString));
  }

  static Serializer<BlogsPage> get serializer => _$blogsPageSerializer;
}
