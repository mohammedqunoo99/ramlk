import 'package:flutter/material.dart';

const String BaseUrl = "http://bikehub.store/api/";

const String ImageUrl = "http://bikehub.store/Images/";

class AppColor {
  static const Color background = Colors.white;
  static const Color greenColor = Color(0xFF79A316);

  static const Color textColor = Colors.black38;

  static const containerColor = Color(0xFFf2f2f2);
}

class ErrorCode {
  static const int somethingWentWrong = 1;
  static const int thanksYou = 2;
  static const int theCompanyAlreadyExists = 3;
  static const int RateExists = 4;
}

const String IS_LOGIN = "login";

const String ID = "id";
const String NAME = "name";
const String EMAIL = "email";
const String TOKEN = "token";
const String COUNTRY = "country";
const String IMAGE = "image";

const String APP_COUNTRY = "app_country";
const String APP_COUNTRY_NAME = "app_country_name";
const String APP_CURRENCY= "app_currency";
const APP_COUNTRY_FLAG = "app_country_flag";
const String APP_LANGUAGE = "App_language";
const String APP_Currency = "APP_Currency";

const String MOBILE = "mobile";
const String NOTIFI="";
Color blackColor = Color(0xff1A1A1A);
Color redColor = Color(0xffE5003A);
Color greenColor = Color(0xff79A316);
Color blueColor = Color(0xff0583F2);
Color whiteColor = Colors.white;


//
// TextStyle titleStyle = TextStyle(
//     fontSize: 24,
//     fontWeight: FontWeight.w900,
//     fontFamily: 'fonts',
//     color: Colors.white
// );
// TextStyle dataStyle = TextStyle(
//     fontSize: 18,
//     fontWeight: FontWeight.normal,
//     fontFamily: 'fonts',
//     color: Colors.white
// );