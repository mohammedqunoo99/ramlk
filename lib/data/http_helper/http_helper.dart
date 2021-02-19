import 'dart:convert';
import 'dart:io';
import 'package:cookie_jar/src/default_cookie_jar.dart';

import 'package:built_collection/src/list.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

import 'Ihttp_helper.dart';

import 'package:path/path.dart';



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
}