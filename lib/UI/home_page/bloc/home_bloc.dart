import 'package:bloc/bloc.dart';

import '../../../data/repository/irepository.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  IRepository _repository;

  HomeBloc(this._repository) : super(HomeState.initail());

  int currentPageFree = 1;
  int totalPageFree = 0;

  int currentPageNew = 1;
  int totalPageNew = 0;

  int currentPageInstructors = 1;
  int totalPageInstructors = 0;

  int currentPageAll = 1;
  int totalPageAll = 0;

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is ClearError) {
      yield state.rebuild((b) => b..error = "");
    }



    /*** GetSliders ***/

    if (event is GetSliders) {
      try {
        yield state.rebuild((b) => b
          ..isLoading = true
          ..error = ""
          ..sliders = null);

        final slidersData = await _repository.getSlider();
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = ""
          ..sliders.replace(slidersData));
      } catch (e) {
        print('profile Error $e');
        yield state.rebuild((b) => b
          ..isLoading = false
          ..error = "Something went wrong"
          ..sliders = null);
      }
    }

    /*** GetBlogss ***/


    ///////*****getfilter*****////////////
  }
}
