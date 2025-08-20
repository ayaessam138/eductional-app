import 'package:auto_size_text/auto_size_text.dart';
import 'package:eductional/Features/courses/persentation/ui/widgets/course_lectures_widget.dart';
import 'package:eductional/Features/courses/persentation/ui/widgets/course_overview_widget.dart';
import 'package:eductional/Features/courses/persentation/ui/widgets/simillar_courses_widget.dart';
import 'package:eductional/core/theming/app_images.dart';
import 'package:eductional/core/theming/app_spacing.dart';
import 'package:eductional/core/theming/app_values.dart';
import 'package:eductional/core/theming/colors.dart';
import 'package:eductional/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseDeatilsScreen extends StatefulWidget {
  const CourseDeatilsScreen({super.key});

  @override
  State<CourseDeatilsScreen> createState() => _CourseDeatilsScreenState();
}

class _CourseDeatilsScreenState extends State<CourseDeatilsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(surfaceTintColor: Colors.transparent),
      body: Column(
        children: [
          Expanded(
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    // elevation: 0,
                    surfaceTintColor: Colors.transparent,
                    automaticallyImplyLeading: false,
                    pinned: true,
                    expandedHeight: AppHeight.fullHight(context) * .3,
                    backgroundColor: ColorsManager.white,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.asset(
                        AppImages.course,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ];
              },
              body: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(AppPadding.p10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Machine Learning",
                            style: TextStyles.font18Medium,
                          ),
                          Row(
                            children: [
                              AutoSizeText(
                                "4.5",
                                style: TextStyles.font12Regular,
                              ),
                             Icon(Icons.star_rate,size: 15.sp,color: ColorsManager.yellow,),
                              AppSpace.horizontal(AppWidth.w12),
                              AutoSizeText(
                                "10.5k Learners",
                                style: TextStyles.font12Regular,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverFillRemaining(
                    child: Column(
                      children: [
                        TabBar(
                          controller: _tabController,
                          labelColor: ColorsManager.mainColor,
                          indicatorColor: ColorsManager.mainColor,
                          unselectedLabelColor: ColorsManager.greyDarkColor,
                          tabs: const [
                            Tab(text: "Overview"),
                            Tab(text: "Lectures"),
                            Tab(text: "Similar Courses"),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _tabController,
                            children: const [
                              CourseOverviewWidget(),
                             CourseLecturesWidget(),
                              SimillarCoursesListViewWidget(),
                            ],
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
      ),
    );
  }
}
