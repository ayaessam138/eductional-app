import 'package:auto_size_text/auto_size_text.dart';
import 'package:eductional/core/theming/app_images.dart';
import 'package:eductional/core/theming/app_spacing.dart';
import 'package:eductional/core/theming/app_values.dart';
import 'package:eductional/core/theming/colors.dart';
import 'package:eductional/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTopCoursesListViewWidget extends StatelessWidget {
  const HomeTopCoursesListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return HomeTopCoursesListViewCard();
      },
      separatorBuilder: (BuildContext context, int index) {
        return AppSpace.horizontal(AppWidth.w6);
      },
    );
  }
}

class HomeTopCoursesListViewCard extends StatelessWidget {
  const HomeTopCoursesListViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppWidth.fullWidth(context) * .7,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
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
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.only(
                  topLeft: Radius.circular(AppRadius.r6),
                  topRight: Radius.circular(AppRadius.r6),
                ),
                child: Image.asset(
                  AppImages.course,
                  height: constraints.maxHeight * .65,
                  width: constraints.maxWidth,
                  fit: BoxFit.cover,
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(AppPadding.p6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: AutoSizeText(
                          "Data Science",
                          style: TextStyles.font18Regular,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: AppWidth.w6,
                              children: [
                                AutoSizeText(
                                  "4.5",
                                  style: TextStyles.font12Regular,
                                ),
                                Icon(Icons.star_rate),
                              ],
                            ),
                            Flexible(
                              child: AutoSizeText(
                                "10.5k Learners",
                                style: TextStyles.font12Regular,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
