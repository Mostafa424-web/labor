import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);
  goNext(Widget widget , context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FadeInUp(
      duration: const Duration(seconds: 1),
        child: widget),));
  }
}
