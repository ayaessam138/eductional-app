import 'package:auto_size_text/auto_size_text.dart';
import 'package:eductional/core/theming/app_images.dart';
import 'package:eductional/core/theming/app_spacing.dart';
import 'package:eductional/core/theming/app_values.dart';
import 'package:eductional/core/theming/colors.dart';
import 'package:eductional/core/theming/styles.dart';
import 'package:flutter/material.dart';

class BlogsListviewWidget extends StatelessWidget {
  const BlogsListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(AppPadding.p10),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return BlogsListviewCardWidget();
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
        crossAxisSpacing: 8.0, // Spacing between columns
        mainAxisSpacing: 8.0, // Spacing between rows
        childAspectRatio: 0.8, // Aspect ratio of each item (width / height)
      ),
    );
  }
}

class BlogsListviewCardWidget extends StatelessWidget {
  const BlogsListviewCardWidget({super.key});

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
            spacing: AppHeight.h3,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.only(
                  topLeft: Radius.circular(AppRadius.r6),
                  topRight: Radius.circular(AppRadius.r6),
                ),
                child: Image.asset(
                  AppImages.blog,
                  height: constraints.maxHeight * .6,
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
                          style: TextStyles.font12Regular,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Flexible(
                        child: AutoSizeText(
                          "Digital Marketing",
                          style: TextStyles.font12Medium,
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
                                Icon(Icons.remove_red_eye_outlined),
                                AutoSizeText(
                                  "4.5",
                                  style: TextStyles.font12Regular,
                                ),
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
