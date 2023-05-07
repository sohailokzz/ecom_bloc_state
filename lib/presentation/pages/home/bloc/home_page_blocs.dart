import 'package:ecom_bloc/presentation/pages/home/bloc/home_page_events.dart';
import 'package:ecom_bloc/presentation/pages/home/bloc/home_page_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBlocs extends Bloc<HomePageEvents, HomePageSates> {
  HomePageBlocs()
      : super(HomePageSates(
          index: 0,
        )) {
    on<HomePageDotsEvent>(_homePageDots);
  }

  void _homePageDots(HomePageDotsEvent event, Emitter<HomePageSates> emit) {
    emit(
      state.copyWith(
        event.index,
      ),
    );
  }
}
