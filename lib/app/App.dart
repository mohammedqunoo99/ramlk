import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ramlk/UI/home_page/home_page.dart';
import 'package:ramlk/UI/login_page/login_page.dart';
// import 'package:ramlk/Ui/base_page/base_page.dart';
import 'package:ramlk/app/bloc/app_bloc.dart';
import 'package:ramlk/core/app_language.dart';
import 'package:ramlk/core/app_localizations.dart';
import 'package:ramlk/Ui/splash_screen/splash_screen.dart';
import 'package:ramlk/injectoin.dart';
import 'bloc/app_event.dart';
import 'bloc/app_state.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _AppBloc = sl<AppBloc>();
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );

    _firebaseMessaging.getToken().then((value) {
      print('FCMAPP :$value');

      _AppBloc.add(UpdateToken((b) => b
        ..firebase_token=value
      ));

    });
    _AppBloc.add(IniEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        cubit: _AppBloc,
        builder: (BuildContext context, AppState state) {
          print('LoginState App : ${state.loginState}');
          print('Language App : ${state.appLanguage}');
          return StreamBuilder(
              stream: localeSubjectAppLanguage.stream.distinct(),
              initialData: state.appLanguage == AppLanguageKeys.AR
                  ? Locale('ar', '')
                  : Locale('en', ''),
              builder: (context, snapshotLanguage) {
                return MaterialApp(
                    title: "App",
                    debugShowCheckedModeBanner: false,
                    home:
                    state.loginState ? home() : SplashScreen(),
                    locale: snapshotLanguage.data == AppLanguageKeys.AR
                        ? Locale('ar', '')
                        : Locale('en', ''),
                    localizationsDelegates: [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                    ],
                    supportedLocales: [
                      const Locale('en', ''), // English
                      const Locale('ar', ''), // Arabic
                    ]);
              });
        });
  }
}
