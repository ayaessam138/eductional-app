import 'package:auto_size_text/auto_size_text.dart';
import 'package:eductional/core/theming/app_spacing.dart';
import 'package:eductional/core/theming/app_values.dart';
import 'package:eductional/core/theming/colors.dart';
import 'package:eductional/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CourseLecturesWidget extends StatelessWidget {
  const CourseLecturesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(AppPadding.p10),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return CourseLecturesCardWidget();
        },
        separatorBuilder: (BuildContext context, int index) {
          return AppSpace.horizontal(AppWidth.w6);
        },
      ),
    );
  }
}

class CourseLecturesCardWidget extends StatelessWidget {
  const CourseLecturesCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent, 
          highlightColor: Colors.transparent, 
        ),
        child: ExpansionTileTheme(
          data: ExpansionTileThemeData(
            collapsedShape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
            ),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
            ),
          ),
          child: ExpansionTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  'Lesson 1',
                  style: TextStyles.font12Medium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                AutoSizeText(
                  'Introduction',
                  style: TextStyles.font18Medium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            children: <Widget>[
              Row(
                children: [
                  Icon(Icons.play_circle_fill_outlined),
                  AutoSizeText(
                    'Sub Lecture',
                    style: TextStyles.font12Regular,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
