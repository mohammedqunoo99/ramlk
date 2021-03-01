import 'dart:io';
import 'package:ramlk/model/product_model/product_model.dart';
import 'package:ramlk/model/slider_model/slider_model.dart';
import 'package:ramlk/model/user_model/user_model.dart';

abstract class IRepository {
  Future<UserModel> login(String mobile);

  Future<UserModel> register(
      String full_name,
      String email,

      String mobile,


      );

  Future<bool> forgetPassword(String email);

  Future<SliderModel> getSlider();

}
