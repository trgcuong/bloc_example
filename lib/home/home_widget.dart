import 'package:base_bloc/base_bloc.dart';
import 'package:flutter/material.dart';
import 'bloc.dart';

class HomeWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeWidgetState();
  }
}

class HomeWidgetState extends BaseBlocState<HomeWidget> {

  @override
  Widget build(BuildContext context) {
    return BaseBlocBuilder<HomeState>(bloc, _buildBody);
  }

  @override
  BaseBloc createBloc() {
    return HomeBloc();
  }
  Widget _buildBody(BuildContext context, HomeState state) {

    return //todo return a widget;
  }

}

