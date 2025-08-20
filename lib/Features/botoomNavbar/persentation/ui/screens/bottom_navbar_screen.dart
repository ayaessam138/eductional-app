import 'package:eductional/Features/botoomNavbar/persentation/controller/bottom_nav_bar_cubit.dart';
import 'package:eductional/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/styles.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
      buildWhen: (previous, current) => current is BottomNavBarChangeIndex,
      builder: (context, state) {
        var cubit = BlocProvider.of<BottomNavBarCubit>(context);

        return Scaffold(
          resizeToAvoidBottomInset: false,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: cubit.pages[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: ColorsManager.white,
            currentIndex: cubit.currentIndex,
            onTap: (index) => cubit.changeIndex(index),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: ColorsManager.mainColor,
            unselectedItemColor: ColorsManager.greyDarkColor,
            selectedLabelStyle: TextStyles.font12Medium,
            unselectedLabelStyle: TextStyles.font12Regular,
            iconSize: 22.sp,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined),
                activeIcon: Icon(Icons.video_library_outlined),
                label: "Courses",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_sharp),
                activeIcon: Icon(Icons.menu_book_sharp),
                label: "Blog",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: "My Profile",
              ),
            ],
          ),
        );
      },
    );
  }
}
