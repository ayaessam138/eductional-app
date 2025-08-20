import 'package:auto_size_text/auto_size_text.dart';
import 'package:eductional/core/theming/app_values.dart';
import 'package:eductional/core/theming/styles.dart';
import 'package:flutter/material.dart';

class HomeAppbarWidget extends StatelessWidget {
  const HomeAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AutoSizeText("Hello Liza !",style: TextStyles.font18Regular,),
        Icon(Icons.search)
      ],
    );
  }
}