import 'package:rxdart/rxdart.dart';

var localeSubjectAppLanguage = BehaviorSubject<int>();

changeAppLanguage(int choice) {
  localeSubjectAppLanguage.sink.add(choice);
}

class AppLanguageKeys {
  static const AR = 0;
  static const EN = 1;
}
var localeSubjectAppCurrency = BehaviorSubject<String>();

changeAppCurrency(String choice) {
  localeSubjectAppCurrency.sink.add(choice);
}
