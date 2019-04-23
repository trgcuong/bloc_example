import 'package:base_bloc/base_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_bloc/login/login_bloc.dart';
import 'package:flutter_base_bloc/login/login_event.dart';
import 'package:flutter_base_bloc/login/login_state.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}


class LoginScreenState extends BaseBlocState<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:  AppBar(), body: BaseBlocBuilder<LoginState>(bloc, _buildBody));
  }

  @override
  BaseBloc createBloc() {
    return LoginBloc();
  }
  Widget _buildBody(BuildContext context, LoginState state) {
    if (state.isLoading) {
      return Container(child: CircularProgressIndicator(),alignment: Alignment.center,);
    }
    if (state.error != null) {
      return Container(child: Text(state.error.toString()),);
    }
    if (state.loginStatus == "readyLogin") {
      return _buildLogoutForm();
    }

    return _buildLoginForm();
  }

  @override
  bool get needDisposeBloc => true;

  Widget _buildLoginForm() {
    return Container(
        alignment: Alignment.center,
        child: RaisedButton(child: Text("Login"), onPressed: _onClickLogin,));
  }

  Widget _buildLogoutForm() {
    return Container(
        alignment: Alignment.center,
        child: RaisedButton(child: Text("Logout"), onPressed: _onClickLogout,));
  }

  void _onClickLogin() {
   dispatch(SubmitLoginEvent());
  }

  void _onClickLogout() {
    dispatch(SubmitLogoutEvent());
  }
}