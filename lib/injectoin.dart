import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
// import 'package:ramlk/Ui/forget_password_screen/bloc/forget_password_bloc.dart';
import 'package:ramlk/UI/login_page/bloc/login_bloc.dart';
import 'package:ramlk/UI/register_bage//bloc/register_bloc.dart';

import 'package:ramlk/app/bloc/app_bloc.dart';
import 'package:ramlk/core/constent.dart';
import 'package:ramlk/data/db_helper/Idb_helper.dart';
import 'package:ramlk/data/db_helper/db_helper.dart';
import 'package:ramlk/data/http_helper/Ihttp_helper.dart';
import 'package:ramlk/data/http_helper/http_helper.dart';
import 'package:ramlk/data/prefs_helper/iprefs_helper.dart';
import 'package:ramlk/data/prefs_helper/prefs_helper.dart';
import 'package:ramlk/data/repository/irepository.dart';
import 'package:ramlk/data/repository/repository.dart';

final sl = GetIt.instance;

Future iniGetIt() async {
  sl.registerLazySingleton(() => ((Dio(BaseOptions(
      baseUrl: BaseUrl,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        // "charset": "utf-8",
        // "Accept-Charset": "utf-8"
      },
      responseType: ResponseType.plain)
  ))));

  // data
  sl.registerLazySingleton<IDbHelper>(() => DbHelper());
  sl.registerLazySingleton<IPrefsHelper>(() => PrefsHelper());
  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl()));
  sl.registerLazySingleton<IRepository>(() => Repository(sl(), sl(), sl()));

  /// AppBloc
  // sl.registerFactory(() => AppBloc(sl()));
  // sl.registerFactory(() => HomeBloc(sl()));



  sl.registerFactory(() => AppBloc(sl()));

   sl.registerFactory(() => SignUpBloc(sl()));
    sl.registerFactory(() => LoginBloc(sl()));
    // sl.registerFactory(() => ForgetPasswordBloc(sl()));




  // sl.registerFactory(() => LangugeBloc(sl()));
  // sl.registerFactory(() => BlogsBloc(sl()));
  // sl.registerFactory(() => StoreDetailsBloc(sl()));
  // sl.registerFactory(() => AllStoriesBloc(sl()));
  // sl.registerFactory(() => SettingsBloc(sl()));
  // sl.registerFactory(() => ProductBloc(sl()));

  ///EditProfileBloc
  // sl.registerFactory(() => EditProfileBloc(sl()));
  // sl.registerFactory(() => AllCategoriesBloc(sl()));
  // sl.registerFactory(() => ServicesBloc(sl()));
  // sl.registerFactory(() => FavoriteBloc(sl()));
  // sl.registerFactory(() => ProductsContentBloc(sl()));
  //
  // sl.registerFactory(() => AboutBloc(sl()));
  // sl.registerFactory(() => ContactusBloc(sl()));
  // sl.registerFactory(() => NotificationBloc(sl()));
  // sl.registerFactory(() => ForgetPasswordBloc(sl()));
  // sl.registerFactory(() => ForgetPasswordConfirmBloc(sl()));
  // sl.registerFactory(() => ChangePasswordBloc(sl()));
  // sl.registerFactory(() => CartBloc(sl()));
  // sl.registerFactory(() => ServicesContentBloc(sl()));
}
