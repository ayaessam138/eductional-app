import 'package:auto_size_text/auto_size_text.dart';
import 'package:eductional/core/theming/app_values.dart';
import 'package:eductional/core/theming/colors.dart';
import 'package:eductional/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CourseOverviewWidget extends StatelessWidget {
  const CourseOverviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.all(AppPadding.p12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.lock_clock),
              title: AutoSizeText(
                "6 Hours",
                style: TextStyles.font18Regular,
                maxLines: 1,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.school),
              title: AutoSizeText(
                "Completion Certificate",
                style: TextStyles.font18Regular,
                maxLines: 1,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(Icons.signal_cellular_alt),
              title: AutoSizeText(
                "Beginner",
                style: TextStyles.font18Regular,
                maxLines: 1,
              ),
            ),
            AutoSizeText(
              "What will I learn ?",
              style: TextStyles.font18Regular,
              maxLines: 1,
            ),
            AutoSizeText(
              "The Macine learning basics program is designed to offer a soli foundation & work-ready skills for ML engineers. The Macine learning basics program is designed to offer a soli foundation & work-ready skills for ML engineers. Read More",
              style: TextStyles.font12Regular,
              maxLines: 4,
            ),
            AutoSizeText(
              "Ratings and Reviews",
              style: TextStyles.font18Regular,
              maxLines: 1,
            ),
            Row(
              spacing: AppWidth.w14,
              children: [
                AutoSizeText(
                  "3.4",
                  style: TextStyles.font18Regular.copyWith(fontSize: 28),
                  maxLines: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.star, color: ColorsManager.yellow),
                    AutoSizeText(
                      "3 reviews",
                      style: TextStyles.font18Regular,
                      maxLines: 1,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
