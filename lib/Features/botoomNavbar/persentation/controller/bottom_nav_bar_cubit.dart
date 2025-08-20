import 'package:bloc/bloc.dart';
import 'package:eductional/Features/blogs/persentation/ui/screens/blogs_screen.dart';
import 'package:eductional/Features/courses/persentation/ui/screens/courses_screen.dart';
import 'package:eductional/Features/home/persentation/ui/screens/home_screen.dart';
import 'package:eductional/Features/profile/persentation/ui/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(BottomNavBarInitial());
  // static BottomNavBarCubit get get => getIt();

  List<Widget> pages = [HomeScreen(), CoursesScreen(), BlogsScreen(), ProfileScreen()];

  int currentIndex = 0;

  void changeIndex(int index) {
    emit(BottomNavBarInitial());
    currentIndex = index;
    emit(BottomNavBarChangeIndex());
  }
}
