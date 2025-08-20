import 'package:auto_size_text/auto_size_text.dart';
import 'package:eductional/Features/home/persentation/ui/widgets/home_appbar_widget.dart';
import 'package:eductional/Features/home/persentation/ui/widgets/home_categories_lsitview_widget.dart';
import 'package:eductional/Features/home/persentation/ui/widgets/home_popular_blogs_listview.dart';
import 'package:eductional/Features/home/persentation/ui/widgets/home_slider_widget.dart';
import 'package:eductional/Features/home/persentation/ui/widgets/home_top_courses_listwiew_widget.dart';
import 'package:eductional/core/theming/app_values.dart';
import 'package:eductional/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: AppHeight.h10,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppWidth.w25,
                  vertical: AppHeight.h20,
                ),
                child: HomeAppbarWidget(),
              ),
              HomeSliderWidget(),
              Padding(
                padding: EdgeInsets.all(AppPadding.p12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText("Categories", style: TextStyles.font18Regular),
                    SizedBox(height: 80.h, child: HomeCategoriesWidget()),

                    AutoSizeText(
                      "Top Courses",
                      style: TextStyles.font18Regular,
                    ),
                    SizedBox(
                      height: 181.h,
                      child: HomeTopCoursesListViewWidget(),
                    ),
                    AutoSizeText(
                      "PopularBlogs",
                      style: TextStyles.font18Regular,
                    ),
                    SizedBox(
                      height: 121.h,
                      child: HomePopularBlogsListviewWidget(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
