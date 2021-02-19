import 'package:flutter/material.dart';

import 'UI/home_page/home_page.dart';
import 'UI/login_page/login_page.dart';
import 'UI/register_bage/register_page.dart';
import 'UI/splash_screen/splash_screen.dart';
import 'UI/verification1_screen/verification1_screen.dart';
import 'app/App.dart';
import 'injectoin.dart';

// flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
void main() async {

  await iniGetIt();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home: new login(),

  ));
}

