import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_bloc/login/login_screen.dart';

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onTransition(Transition transition) {
    print(transition);
  }
}

void main() {
  BlocSupervisor().delegate = SimpleBlocDelegate();
  runApp(App());
}

class App extends StatefulWidget {

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen(),);
  }

}
