library login_state;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
// import 'package:maiel/model/user_model/user_model.dart';

part 'login_state.g.dart';

abstract class LoginState implements Built<LoginState, LoginStateBuilder> {
  // fields go here

  String get error;

  bool get isLoading;

  bool get success;
  bool get successSignup;
  // UserModel get user;

  LoginState._();

  factory LoginState([updates(LoginStateBuilder b)]) = _$LoginState;

  factory LoginState.initail() {
    return LoginState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
        ..successSignup=false
    );
  }
}
