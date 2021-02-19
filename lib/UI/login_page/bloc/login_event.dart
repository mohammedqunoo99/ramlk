library login_event;

import 'dart:convert';
import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_event.g.dart';

abstract class LoginEvent {}

abstract class TryLogin extends LoginEvent
    implements Built<TryLogin, TryLoginBuilder> {
  // fields go here

  String get mobile;

  TryLogin._();

  factory TryLogin([updates(TryLoginBuilder b)]) = _$TryLogin;
}

abstract class ClearError extends LoginEvent
    implements Built<ClearError, ClearErrorBuilder> {
  // fields go here

  ClearError._();

  factory ClearError([updates(ClearErrorBuilder b)]) = _$ClearError;
}
abstract class ChangeStatus extends LoginEvent
    implements Built<ChangeStatus, ChangeStatusBuilder> {
  // fields go here

  ChangeStatus._();

  factory ChangeStatus([updates(ChangeStatusBuilder b)]) = _$ChangeStatus;
}

// abstract class SignUp extends LoginEvent
//     implements Built<SignUp, SignUpBuilder> {
//   // fields go here
//
//   String get full_name;
//
//   String get email;
//   String get mobile;
//
//   String get password;
//   bool get terms;
//
//   File get image;
//
//   SignUp._();
//
//   factory SignUp([updates(SignUpBuilder b)]) = _$SignUp;
// }

// abstract class ForgotPassword extends LoginEvent
//     implements Built<ForgotPassword, ForgotPasswordBuilder> {
//   // fields go here
//
//   String get email;
//
//   ForgotPassword._();
//
//   factory ForgotPassword([updates(ForgotPasswordBuilder b)]) = _$ForgotPassword;
// }
//
// abstract class FindPassword extends LoginEvent
//     implements Built<FindPassword, FindPasswordBuilder> {
//   // fields go here
//
//   String get email;
//
//   FindPassword._();
//
//   factory FindPassword([updates(FindPasswordBuilder b)]) = _$FindPassword;
// }
//
// abstract class ResetPassword extends LoginEvent
//     implements Built<ResetPassword, ResetPasswordBuilder> {
//   // fields go here
//
//   String get email;
//
//   String get password;
//
//   String get confirmPassword;
//
//   ResetPassword._();
//
//   factory ResetPassword([updates(ResetPasswordBuilder b)]) = _$ResetPassword;
// }
