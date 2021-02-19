// library Register_state;
//
// import 'dart:convert';
//
// import 'package:built_collection/built_collection.dart';
// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';
// import 'package:ramlk/UI/login_page/bloc/login_state.dart';
// import 'package:ramlk/model/user_model/user_model.dart';
//
//
// abstract class LoginState implements Built<LoginState, RegisterEventBuilder> {
//   // fields go here
//
//   String get error;
//
//   bool get isLoading;
//
//   bool get success;
//   bool get successSignup;
//   UserModel get user;
//
//   LoginState._();
//
//   factory LoginState([updates(LoginStateBuilder b)]) = _$RegisterEvent;
//
//   factory LoginState.initail() {
//     return LoginState((b) => b
//       ..error = ""
//       ..isLoading = false
//       ..success = false
//       ..successSignup=false
//     );
//   }
// }
