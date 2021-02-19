import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
// import 'package:maiel/Ui/AllBlogs_page/bloc/blog_bloc.dart';
// import 'package:maiel/Ui/AllNotification_page/bloc/notification_bloc.dart';
// import 'package:maiel/Ui/AllProducts_page/bloc/products_bloc.dart';
// import 'package:maiel/Ui/AllStores_page/bloc/all_stories_bloc.dart';
// import 'package:maiel/Ui/carte_page/bloc/cart_bloc.dart';
// import 'package:maiel/Ui/change_password_page/bloc/change_password_bloc.dart';
// import 'package:maiel/Ui/edit_profile_page/bloc/edit_profile_bloc.dart';
// import 'package:maiel/Ui/home_page/bloc/home_bloc.dart';
// import 'package:maiel/Ui/language_page/bloc/language_bloc.dart';
// import 'package:maiel/Ui/login_page/bloc/login_bloc.dart';
// import 'package:maiel/Ui/products_content/bloc/products_content_bloc.dart';
// import 'package:maiel/Ui/reset_password_screen/bloc/forget_password_bloc.dart';
// import 'package:maiel/Ui/services_page/bloc/services_bloc.dart';
// import 'package:maiel/Ui/setting_page/bloc/settings_bloc.dart';
// import 'package:maiel/Ui/store_content_page/bloc/store_details_bloc.dart';
// import 'package:maiel/Ui/verification_code/bloc/forget_password_confirm_bloc.dart';
import 'package:ramlk/data/http_helper/http_helper.dart';
import 'package:ramlk/data/prefs_helper/iprefs_helper.dart';
import 'package:ramlk/data/repository/irepository.dart';
// import 'Ui/AllClassification_page/bloc/all_categories_bloc.dart';
// import 'Ui/aboutus_page/bloc/about_bloc.dart';
// import 'Ui/contactus_page/bloc/contactus_bloc.dart';
// import 'Ui/favorite_page/bloc/favorite_bloc.dart';
// import 'Ui/services_content/bloc/services_content_bloc.dart';
// import 'app/bloc/app_bloc.dart';
import 'UI/login_page/bloc/login_bloc.dart';
import 'core/constent.dart';
import 'data/http_helper/Ihttp_helper.dart';
import 'data/prefs_helper/prefs_helper.dart';
import 'data/repository/repository.dart';

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
  sl.registerLazySingleton<IPrefsHelper>(() => PrefsHelper());
  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl()));
  // sl.registerLazySingleton<IRepository>(() => Repository(sl(), sl()));

  /// AppBloc
  // sl.registerFactory(() => AppBloc(sl()));
  // sl.registerFactory(() => HomeBloc(sl()));
  sl.registerFactory(() => LoginBloc(sl()));

  //
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
