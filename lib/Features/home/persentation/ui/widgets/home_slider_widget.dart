import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eductional/core/theming/app_images.dart';
import 'package:eductional/core/theming/app_spacing.dart';
import 'package:eductional/core/theming/app_values.dart';
import 'package:eductional/core/theming/colors.dart';
import 'package:eductional/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSliderWidget extends StatelessWidget {
  const HomeSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.mainColor,
        borderRadius: BorderRadius.circular(AppRadius.r6),
      ),
      child: CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            Padding(
              padding: EdgeInsets.all(AppPadding.p20),
              child: Row(
                spacing: AppWidth.w20,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      spacing: AppHeight.h6,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: AutoSizeText(
                            "Secure the Online World",
                            style: TextStyles.font20Medium.copyWith(
                              color: ColorsManager.white,
                            ),
                            maxLines: 1,
                          ),
                        ),
                        Flexible(
                          child: AutoSizeText(
                            "Lets get you started with Cyber Security",
                            style: TextStyles.font14Regular.copyWith(
                              color: ColorsManager.white,
                            ),
                            maxLines: 1,
                          ),
                        ),
                        AppSpace.vertical(AppHeight.h3),
                        Expanded(
                          child: Container(
                            width: 120.w,
                            padding: EdgeInsets.symmetric(
                              horizontal: AppWidth.w12,
                              vertical: AppHeight.h6,
                            ),
                            decoration: BoxDecoration(
                              color: ColorsManager.white,
                              borderRadius: BorderRadius.circular(
                                AppRadius.r12,
                              ),
                            ),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: AutoSizeText(
                                textAlign: TextAlign.center,
                                "Enroll Now",
                                style: TextStyles.font12Regular,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Image.asset(AppImages.slider, fit: BoxFit.fill),
                  ),
                ],
              ),
            ),
        options: CarouselOptions(
          autoPlay: true,
          height: AppHeight.fullHight(context) * .25,
          viewportFraction: 1,
        ),
      ),
    );
  }
}
