import 'package:auto_size_text/auto_size_text.dart';
import 'package:eductional/core/theming/app_images.dart';
import 'package:eductional/core/theming/app_spacing.dart';
import 'package:eductional/core/theming/app_values.dart';
import 'package:eductional/core/theming/colors.dart';
import 'package:eductional/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimillarCoursesListViewWidget extends StatelessWidget {
  const SimillarCoursesListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(AppPadding.p10),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return SimillarCoursesWidget();
        },
        separatorBuilder: (BuildContext context, int index) {
          return AppSpace.horizontal(AppWidth.w6);
        },
      ),
    );
  }
}

class SimillarCoursesWidget extends StatelessWidget {
  const SimillarCoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppHeight.fullHight(context) * .2,
      padding: EdgeInsets.all(AppPadding.p10),
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
      child: Row(
        spacing: AppWidth.w10,
        children: [
          Expanded(
            child: Column(
          
              spacing: AppHeight.h12,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  "Data Science",
                  style: TextStyles.font18Regular,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                Flexible(
                  child: Row(
                    spacing: AppWidth.w6,
                    children: [
                      AutoSizeText("4.5", style: TextStyles.font12Regular),
                      Icon(Icons.star_rate,size: 15.sp,color: ColorsManager.yellow,),
                    ],
                  ),
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
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(AppRadius.r12),
              child: Image.asset(
                AppImages.course,
                fit: BoxFit.cover,
                height: AppHeight.fullHight(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class SimillarCoursesListViewWidget extends StatelessWidget {
//   const SimillarCoursesListViewWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: List.generate(
//         3,
//         (index) => const SimillarCoursesWidget(),
//       ),
//     );
//   }
// }