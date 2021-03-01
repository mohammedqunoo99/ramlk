import 'package:flutter/material.dart';

import 'UI/atlop_page/atlop_page.dart';
import 'UI/home_page/home_page.dart';
import 'UI/login_page/login_page.dart';
import 'UI/map_page/map_page.dart';
import 'UI/more_order_page/more_order_page.dart';
import 'UI/product_page/product_page.dart';
import 'UI/register_bage/register_page.dart';
import 'UI/result_search_page/resulr_search_page.dart';
import 'UI/search_page/search_page.dart';
import 'UI/shkawy_page/shlawy_page.dart';
import 'UI/talabaty_page/talabaty_page.dart';
import 'UI/tanbehatk_page//tanbehatk_page.dart';

import 'UI/splash_screen/splash_screen.dart';
import 'UI/verification1_screen/verification1_screen.dart';
import 'app/App.dart';
import 'injectoin.dart';

// flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
void main() async {

  await iniGetIt();
  runApp(App());
  //
  // runApp(MaterialApp(
  //   debugShowCheckedModeBanner: false,
  //
  //   home: new MyApp(),
  //
  // )
  // );
}

