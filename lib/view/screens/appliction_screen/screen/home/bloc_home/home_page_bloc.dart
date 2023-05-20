import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy/view/screens/appliction_screen/screen/home/bloc_home/home_page_event.dart';
import 'package:udemy/view/screens/appliction_screen/screen/home/bloc_home/home_page_state.dart';

class HomePageBlocs extends Bloc<HomePageEvents, HomePageStates> {
  HomePageBlocs() : super(HomePageStates()) {
    on<HomePageDots>(_homePageDots);
  }

  void _homePageDots(HomePageDots event, Emitter<HomePageStates> emit) {
    emit(state.copyWith(index: event.index));
  }
}
