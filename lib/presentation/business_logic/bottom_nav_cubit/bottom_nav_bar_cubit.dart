import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../views/home/home_screen.dart';



part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarState());
  static BottomNavBarCubit of(BuildContext context) => BlocProvider.of(context);
  void navigateToScreen(int index) {
    emit(state.copyWith(index));
  }
}
