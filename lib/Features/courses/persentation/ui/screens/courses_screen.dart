import 'package:auto_size_text/auto_size_text.dart';
import 'package:eductional/Features/courses/persentation/ui/widgets/courses_list_view_widget.dart';
import 'package:eductional/core/theming/app_values.dart';
import 'package:eductional/core/theming/colors.dart';
import 'package:eductional/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: ColorsManager.mainColor,
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppWidth.w6,
            vertical: AppHeight.h10,
          ),
          child: AutoSizeText(
            "Courses",
            style: TextStyles.font18Regular.copyWith(
              color: ColorsManager.white,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(children: [Expanded(child: CoursesListViewWidget())]),
      ),
    );
  }
}
