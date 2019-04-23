import 'package:base_bloc/base_bloc.dart';
import 'package:flutter_base_bloc/login/login_event.dart';
import 'package:flutter_base_bloc/login/login_state.dart';

class LoginBloc extends BaseBloc<LoginState> {
  @override
  LoginState get initialState => LoginState();

  @override
  Stream<LoginState> mapEventToState(
      LoginState currentState, BaseEvent event) async* {
    if (event is ErrorEvent) {
      yield currentState.copyWith(error: event.error);
    }

    if (event is SubmitLoginEvent) {
      yield currentState.copyWith(isLoading: true);
      await Future.delayed(Duration(seconds: 2));
      yield currentState.copyWith(loginStatus: "readyLogin");
    }

    if (event is SubmitLogoutEvent) {
      yield currentState.copyWith(isLoading: true);
      await Future.delayed(Duration(seconds: 2));
      yield currentState.copyWith(loginStatus: "wait");
    }
  }

}

