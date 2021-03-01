library signup_state;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:ramlk/model/user_model/user_model.dart';

 part 'register_state.g.dart';

abstract class SignupState
    implements Built<SignupState, SignupStateBuilder> {
  // fields go here

  String get error;

  bool get isLoading;

  @nullable
  UserModel get user;
  bool get success;


  SignupState._();

  factory SignupState([updates(SignupStateBuilder b)]) =
  _$SignupState;

  factory SignupState.initail() {
    return SignupState((b) => b
      ..error = ""
      ..isLoading = false
      ..success = false
      ..user=null);
  }
}
