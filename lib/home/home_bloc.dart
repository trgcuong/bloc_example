import 'dart:async';
import 'package:base_bloc/base_bloc.dart';
import './bloc.dart';

class HomeBloc extends BaseBloc<HomeState> {

  @override
  HomeState get initialState => HomeState();

  @override
  Stream<HomeState> mapEventToState(HomeState currentState,
    BaseEvent event,
  ) async* {
    // TODO: Add Logic
  }
}
