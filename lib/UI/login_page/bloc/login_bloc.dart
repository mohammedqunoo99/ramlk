import 'package:bloc/bloc.dart';
import 'package:ramlk/Ui/login_page/bloc/login_event.dart';
import 'package:ramlk/Ui/login_page/bloc/login_state.dart';

import '../../../data/repository/irepository.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  IRepository _repository;

  LoginBloc(this._repository) : super(LoginState.initail());


  @override
  Stream<LoginState> mapEventToState(
      LoginEvent event,
      ) async* {
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = "");
    }
    if (event is ChangeStatus) {
      yield state.rebuild((b) => b..success = false
        ..successSignup=false);
    }
    if (event is TryLogin) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..success = false);

        final date = await _repository.login(event.mobile);
        print('TryLogin Success data ${date}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success = true);
      } catch (e) {
        print('TryLogin Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success = false);
      }
    }


  }
}
