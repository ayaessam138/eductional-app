import 'package:auto_size_text/auto_size_text.dart';
import 'package:eductional/Features/courses/persentation/ui/screens/course_deatils_screen.dart';
import 'package:eductional/core/theming/app_spacing.dart';
import 'package:eductional/core/theming/app_values.dart';
import 'package:eductional/core/theming/colors.dart';
import 'package:eductional/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CoursesListViewWidget extends StatelessWidget {
  const CoursesListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(AppPadding.p10),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return CoursesListViewCardWidget();
      },
      separatorBuilder: (BuildContext context, int index) {
        return AppSpace.vertical(AppHeight.h10);
      },
    );
  }
}

class CoursesListViewCardWidget extends StatelessWidget {
  const CoursesListViewCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CourseDeatilsScreen();
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(AppPadding.p10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.r12),
          color: ColorsManager.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xff000000).withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              spacing: AppWidth.w12,
              children: [
                Flexible(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    spacing: AppHeight.h6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Macine Learning",
                        style: TextStyles.font18Regular,
                        maxLines: 1,
                      ),
                      AutoSizeText(
                        "The Macine learning basics program is designed to offer a soli foundation & work-ready skills for ML engineers",
                        style: TextStyles.font12Regular,
                        maxLines: 3,
                      ),
                      AutoSizeText(
                        "4 hours left",
                        style: TextStyles.font10Medium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 5.0,
                    percent: 0.6,
                    center: Text("60%"),
                    progressColor: ColorsManager.mainColor,
                  ),
                ),
              ],
            ),
            Divider(color: ColorsManager.black),
            AutoSizeText(
              "Strat Learning",
              style: TextStyles.font18Regular.copyWith(
                color: ColorsManager.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
