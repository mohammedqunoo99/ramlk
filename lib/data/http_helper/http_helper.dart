import 'dart:convert';
import 'dart:io';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:ramlk/core/error.dart';
import 'package:ramlk/model/serializer/serializer.dart';
import 'package:ramlk/model/slider_model/slider_model.dart';
import 'package:ramlk/model/user_model/user_model.dart';
import 'Ihttp_helper.dart';
import 'package:path/path.dart';
import 'package:cookie_jar/cookie_jar.dart';

class HttpHelper implements IHttpHelper {
  final Dio _dio;

  var cookieJar = CookieJar();

  HttpHelper(this._dio) {
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
      ),
    );
    _dio.interceptors.add(CookieManager(cookieJar));
  }

  @override
  Future<UserModel> login(
     String mobile,
      ) async {
    // TODO: implement login
    try {
      final formData = {"mobile": mobile,};

      final response = await _dio.post('login',
          data: formData,
          options: Options(headers:

          {"Accept": mobile}

          ));
      print('login Response StatusCode ${response.statusCode}');

      if (response.statusCode == 422) {
        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: FullType(UserModel));
        print("implement login status : ${baseResponse}");
        if (baseResponse != null) {
          return baseResponse;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<UserModel> register(
      String name,
      String email,
      String mobile,
 )
  async {
    try {
      print('register Response body ');
      print("full_name=: " + name);

      final formData = FormData.fromMap(
        {
          "email": email,
          "mobile": mobile,
          "full_name": name,
        },
      );

      final response = await _dio.post('signup',
          data: formData,
          options: Options(headers: {"Accept": mobile}));
      print('register Response StatusCode ${response.statusCode}');
      print('register Response body  ${response.data}');
      if (response.statusCode == 422) {
        final UserModel baseResponse = serializers.deserialize(
            json.decode(response.data),
            specifiedType: FullType(UserModel));
        if (baseResponse != null) {
          return baseResponse;
        } else {
          throw NetworkException();
        }
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }

  @override
  Future<SliderModel> getSlider(String language) async {
    try {
      _dio.interceptors.add(CookieManager(cookieJar));
      final response = await _dio.get(
          'sliders',options: Options(headers: {"Accept-Language": language})
      );

      if (response.statusCode == 200) {
        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: FullType(
              SliderModel,
            ));

        if (baseResponse != null) {
          return baseResponse;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }
  /////////forget password//////
  @override
  Future<bool> forgetPassword(String email) async {
    // TODO: implement forgetPassword
    try {
      final formData = {
        "email": email,
      };
      final response = await _dio.post('forget-password', data: formData);
      print('forgetPassword Response StatusCode ${response.statusCode}');

      if (response.statusCode == 200) {
        print('forgetPassword Response body  ${response.data}');

        final baseResponse = json.decode(response.data)['message'];
        print("forgetPassword status : ${baseResponse}");
        if (baseResponse == "success") {
          return true;
        } else {
          throw NetworkException();
        }
      } else {
        throw NetworkException();
      }
    } catch (e) {
      print(e.toString());
      throw NetworkException();
    }
  }
}