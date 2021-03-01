library singup_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'register_event.g.dart';

abstract class SignUpEvent {}

abstract class ClearError extends SignUpEvent
    implements Built<ClearError, ClearErrorBuilder> {
  // fields go here

  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}


abstract class SignUp extends SignUpEvent
    implements Built<SignUp, SignUpBuilder> {
  // fields go here

  String get name;

  String get email;
  String get mobile;


  SignUp._();

  factory SignUp([updates(SignUpBuilder b)]) = _$SignUp;
}

abstract class ChangeStatus extends SignUpEvent
    implements Built<ChangeStatus, ChangeStatusBuilder> {
  // fields go here

  ChangeStatus._();

  factory ChangeStatus([updates(ChangeStatusBuilder b)]) = _$ChangeStatus;
}





