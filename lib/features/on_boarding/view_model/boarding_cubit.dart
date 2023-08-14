import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'boarding_state.dart';

class BoardingCubit extends Cubit<BoardingState> {
  BoardingCubit() : super(BoardingInitial());

  static BoardingCubit get(context) => BlocProvider.of(context);

  SizedBox buildSizedBox(double h) {
    return SizedBox(
      height: h,
    );
  }
  void navigateToNextPage(
      int currentIndex,
      PageController controller,
      ) {
    currentIndex != 2
        ? controller.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInQuad,
    )
        : controller.animateToPage(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInQuad,
    );
  }
}
