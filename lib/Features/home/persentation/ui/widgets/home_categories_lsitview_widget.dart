import 'package:auto_size_text/auto_size_text.dart';
import 'package:eductional/core/theming/app_images.dart';
import 'package:eductional/core/theming/app_spacing.dart';
import 'package:eductional/core/theming/app_values.dart';
import 'package:eductional/core/theming/colors.dart';
import 'package:eductional/core/theming/styles.dart';
import 'package:flutter/material.dart';

class HomeCategoriesWidget extends StatelessWidget {
  const HomeCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return HomeCategoriesListViewCardWidget();
      },
      separatorBuilder: (BuildContext context, int index) {
        return AppSpace.horizontal(AppWidth.w6);
      },
    );
  }
}

class HomeCategoriesListViewCardWidget extends StatelessWidget {
  const HomeCategoriesListViewCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      padding: EdgeInsets.all(AppPadding.p12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.r6),
        color: ColorsManager.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 15,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        spacing: AppWidth.w25,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: AutoSizeText("Cyber Security", style: TextStyles.font12Bold)),
              Expanded(child: AutoSizeText("145 course", style: TextStyles.font12Regular)),
            ],
          ),
          Image.asset(AppImages.categorey)
        ],
      ),
    );
  }
}
