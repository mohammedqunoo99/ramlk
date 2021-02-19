library user_model;

import 'dart:convert';
import 'dart:ffi';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ramlk/model/serializer/serializer.dart';
import 'package:ramlk/model/user_model/user_data.dart';

part 'user_model.g.dart';


abstract class UserModel implements Built<UserModel,UserModelBuilder> {
  @nullable
  String get token;
  @nullable
  String get message;

  @nullable
  UserData get data;

  UserModel._();

  factory UserModel([updates(UserModelBuilder b)]) = _$UserModel;

  String toJson() {
    return json.encode(serializers.serializeWith(UserModel.serializer, this));
  }

  static UserModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserModel.serializer, json.decode(jsonString));
  }

  static Serializer<UserModel> get serializer => _$userModelSerializer;
}