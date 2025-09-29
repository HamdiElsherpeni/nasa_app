import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_app/core/routes/app_router.dart';
import 'package:nasa_app/core/resources/app_colors.dart';

class NasaSpace extends StatelessWidget {
  const NasaSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), // حجم التصميم الأساسي للشاشة
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: AppRouter.route,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: AppColors.primaryColor,
          ),
        );
      },
    );
  }
}
