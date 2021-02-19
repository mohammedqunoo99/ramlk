import 'package:bloc/bloc.dart';
import 'package:ramlk/core/app_language.dart';
import 'package:ramlk/data/repository/irepository.dart';

import 'app_event.dart';
import 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  IRepository _repository;

  AppBloc(this._repository):super(AppState.initail());

  @override
  AppState get initialState => AppState.initail();

  @override
  Stream<AppState> mapEventToState(
    AppEvent event,
  ) async* {


    if (event is IniEvent) {

      final result = await _repository.getIsLogin();
      yield state.rebuild((b) => b..loginState = result);
      final language = await  _repository.getAppLanguage();
      yield state.rebuild((b) => b..appLanguage = language);
      changeAppLanguage(state.appLanguage);
    }

    if (event is UpdateToken) {
      final result = await _repository.updateToken(event.firebase_token);
    }
  }
}
