library user_data;

import 'dart:convert';
import 'dart:ffi';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
// import 'package:maiel/model/pivot/pivot.dart';
// import 'package:maiel/model/roles/roles.dart';
// import 'package:maiel/model/serializer/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:ramlk/model/serializer/serializer.dart';


part 'user_data.g.dart';


abstract class UserData implements Built<UserData,UserDataBuilder> {
  @nullable
  int get id;
  @nullable
  String get image;
  @nullable
  String get full_name;
  @nullable
  String get mobile;
  @nullable
  String get email;
  @nullable
  String get mobile_verified_at;
  @nullable
  String get email_verified_at;
  @nullable
  String get note;
  @nullable
  int get status;
  @nullable
  int get notification;
  @nullable
  String get created_at;
  @nullable
  String get updated_at;
  @nullable
  String get logo;
  @nullable
  String get company_name;
  @nullable
  String get company_description;
  @nullable
  String get video_360;
  @nullable
  int get delivery;
  @nullable
  String get phone;
  @nullable
  String get whatsapp;
  @nullable
  String get website;
  @nullable
  String get facebook;
  @nullable
  String get instagram;
  @nullable
  String get consultancies;
  @nullable
  String get reset_token;
  @nullable
  String get reset_verified;
  @nullable
  String get notification_status;
  @nullable
  int get currency;
  @nullable
  String get language;
  @nullable
  String get name;

  @nullable
  // BuiltList<Roles> get roles;
  @nullable
  // Pivot get pivot;

  UserData._();

  factory UserData([updates(UserDataBuilder b)]) = _$UserData;

  String toJson() {
    return json.encode(serializers.serializeWith(UserData.serializer, this));
  }

  static UserData fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserData.serializer, json.decode(jsonString));
  }

  static Serializer<UserData> get serializer => _$userDataSerializer;
}