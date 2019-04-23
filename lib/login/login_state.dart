import 'package:base_bloc/base_bloc.dart';

class LoginState extends BaseState {
  String loginStatus;
  bool isLoading;
  var error;

  LoginState({this.loginStatus, this.isLoading = false, this.error}):super([loginStatus,isLoading,error]);

  LoginState copyWith({String loginStatus, bool isLoading, var error}) {
    return LoginState(
      loginStatus: loginStatus ?? this.loginStatus,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}
