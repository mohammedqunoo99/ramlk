// import 'package:bloc/bloc.dart';
// import 'package:ramlk/UI/register_bage/bloc/register_event.dart';
// import 'package:ramlk/UI/register_bage/bloc/register_state.dart';
//
//
// import '../../../data/repository/irepository.dart';
//
// class registerBloc extends Bloc<LoginEvent, LoginState> {
//   IRepository _repository;
//
//   registerBloc(this._repository) : super(LoginState.initail());
//
//
//   @override
//   Stream<LoginState> mapEventToState(
//       LoginEvent event,
//       ) async* {
//     // if (event is ClearError) {
//     //   yield state.rebuild((b) => b..error = "");
//     // }
//     // if (event is ChangeStatus) {
//     //   yield state.rebuild((b) => b..success = false
//     //     ..successSignup=false);
//     // }
//
//
//     if (event is SignUp) {
//       try {
//         yield state.rebuild((b) => b
//           ..isLoading = true
//           ..error = ""
//           ..successSignup = false
//         );
//
//         final date = await _repository.register(event.full_name, event.email, event.mobile,);
//         print('TryRegister Success data ${date}');
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = ""
//           ..successSignup = true
//         );
//       } catch (e) {
//         print('TryRegister Error $e');
//         yield state.rebuild((b) => b
//           ..isLoading = false
//           ..error = "Something went wrong"
//           ..successSignup = false
//         );
//       }
//     }
//
//   }
// }
