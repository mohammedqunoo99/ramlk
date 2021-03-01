import 'package:bloc/bloc.dart';
import 'package:ramlk/UI/register_bage/bloc/register_state.dart';
import 'package:ramlk/Ui/register_bage/bloc/register_bloc.dart';
import 'package:ramlk/Ui/register_bage/bloc/register_event.dart';

import 'package:ramlk/data/repository/irepository.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignupState> {
  IRepository _repository;

  SignUpBloc(this._repository) : super(SignupState.initail());
  @override
  SignupState get initialState => SignupState.initail();


  @override
  Stream<SignupState> mapEventToState(
    SignUpEvent event,
  ) async* {
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = "");
    }


    if (event is SignUp) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..user=null
          ..success=false
        );

        final date = await _repository.register(event.name, event.email, event.mobile,);
        print('TryRegister Success data ${date}');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..success=true
          ..user.replace(date)
        );
      } catch (e) {
        print('TryRegister Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..success=false

          ..user=null
        );
      }
    }



  }
}
