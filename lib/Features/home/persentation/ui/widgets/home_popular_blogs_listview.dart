import 'package:auto_size_text/auto_size_text.dart';
import 'package:eductional/core/theming/app_images.dart';
import 'package:eductional/core/theming/app_spacing.dart';
import 'package:eductional/core/theming/app_values.dart';
import 'package:eductional/core/theming/colors.dart';
import 'package:eductional/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePopularBlogsListviewWidget extends StatelessWidget {
  const HomePopularBlogsListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return HomePopularBlogsListviewwCardWidget();
      },
      separatorBuilder: (BuildContext context, int index) {
        return AppSpace.horizontal(AppWidth.w6);
      },
    );
  }
}

class HomePopularBlogsListviewwCardWidget extends StatelessWidget {
  const HomePopularBlogsListviewwCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppWidth.fullWidth(context) * .7,
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
          return Row(
            spacing: AppWidth.w6,
            children: [
              SizedBox(
                width: constraints.maxWidth * .6,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.only(
                    topLeft: Radius.circular(AppRadius.r6),
                    bottomLeft: Radius.circular(AppRadius.r6),
                  ),
                  child: Image.asset(
                    AppImages.blog,
                    fit: BoxFit.cover,
                    height: 121.h,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  spacing: constraints.maxHeight * 0.01,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Rian Mendella",
                      style: TextStyles.font10Light,
                      maxLines: 1,
                    ),
                    AutoSizeText(
                      "How to improve Microsoft Excel Skills",
                      style: TextStyles.font12Regular,
                      maxLines: 3,
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      child: AutoSizeText(
                        "Most people know the power Excel can wield...",
                        style: TextStyles.font10Medium,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
