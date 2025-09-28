import 'package:flutter/material.dart';
import 'package:nasa_app/core/routes/app_router.dart';
import 'package:nasa_app/core/utils/app_colors.dart';

class NasaSpace extends StatelessWidget {
  const NasaSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.route,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
    );
  }
}
