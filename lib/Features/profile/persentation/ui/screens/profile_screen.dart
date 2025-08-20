import 'package:auto_size_text/auto_size_text.dart';
import 'package:eductional/core/theming/app_images.dart';
import 'package:eductional/core/theming/app_values.dart';
import 'package:eductional/core/theming/colors.dart';
import 'package:eductional/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: ColorsManager.mainColor,
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppWidth.w6,
            vertical: AppHeight.h10,
          ),
          child: AutoSizeText(
  
            "Profile",
            style: TextStyles.font18Regular.copyWith(
              color: ColorsManager.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(AppPadding.p12),
        child: SingleChildScrollView(
          child: Column(
            spacing: AppHeight.h12,
            children: [
              ListTile(
                leading: Image.asset(AppImages.profile),
                title: AutoSizeText(
                  "Profile",
                  style: TextStyles.font18Regular,
                  maxLines: 1,
                ),
              ),
              ListTile(
                leading: Image.asset(AppImages.rate),
                title: AutoSizeText(
                  "Rate App",
                  style: TextStyles.font18Regular,
                  maxLines: 1,
                ),
              ),
              ListTile(
                leading: Image.asset(AppImages.share),
                title: AutoSizeText(
                  "Share App",
                  style: TextStyles.font18Regular,
                  maxLines: 1,
                ),
              ),
              ListTile(
                leading: Image.asset(AppImages.privacy),
                title: AutoSizeText(
                  "Privacy Policy",
                  style: TextStyles.font18Regular,
                  maxLines: 1,
                ),
              ),
              ListTile(
                leading: Image.asset(AppImages.signOut),
                title: AutoSizeText(
                  "Sign Out",
                  style: TextStyles.font18Regular,
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
