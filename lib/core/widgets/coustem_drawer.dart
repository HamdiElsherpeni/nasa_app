import 'package:flutter/material.dart';
import 'package:nasa_app/core/functions/coustem_navigate.dart';
import 'package:nasa_app/core/resources/app_assets.dart';
import 'package:nasa_app/core/routes/app_router.dart';
import 'package:nasa_app/core/resources/app_colors.dart';
import 'package:nasa_app/core/widgets/coustem_user_info.dart';
import 'package:nasa_app/core/widgets/coutem_circel_image.dart';
import 'package:nasa_app/futures/auth/presentation/view/widgets/coustem_auth_disighin.dart'; // غير مستخدم هنا
import 'package:nasa_app/core/widgets/coustem_drawer_disinn.dart';

class CoustemDrawer extends StatelessWidget {
  const CoustemDrawer({super.key, context});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.7, // التحكم في نسبة عرض الـ Drawer
      child: Drawer(
        backgroundColor: AppColors.primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: AppColors.primaryColor),
                child: CoustemDrawerDisinghn(text: 'NASA Classifier'),
              ),

              // زر Home
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // ⬅️ إغلاق الـ Drawer أولاً
                  coustemNavigatPushReplace(context, AppRouter.homeView);
                },
              ),

              // زر UpLoad
              ListTile(
                leading: const Icon(Icons.upload, color: Colors.white),
                title: const Text(
                  "UpLoad",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // ⬅️ إغلاق الـ Drawer أولاً
                  coustemNavigatPushReplace(context, AppRouter.uplodaView);
                },
              ),

              // زر Result
              ListTile(
                leading: const Icon(
                  Icons.bar_chart_outlined,
                  color: Colors.white,
                ),
                title: const Text(
                  "Result",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  coustemNavigatPushReplace(context, AppRouter.resultView);
                },
              ),

              // زر Setteing
              ListTile(
                leading: const Icon(Icons.settings, color: Colors.white),
                title: const Text(
                  "Setteing",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  coustemNavigatPushReplace(context, AppRouter.settingView);
                },
              ),
              Spacer(),
              CoustemUserInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
