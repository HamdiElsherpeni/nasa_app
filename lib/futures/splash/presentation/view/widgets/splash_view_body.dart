import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_app/core/database/my_cache_helper.dart';
import 'package:nasa_app/core/database/prefs_constants.dart';
import 'package:nasa_app/core/functions/navigate_extension.dart';
import 'package:nasa_app/core/resources/app_assets.dart';
import 'package:nasa_app/core/routes/routes.dart';
import 'package:nasa_app/main.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    checkVisited();
  }

  Future<void> checkVisited() async {
    bool isVisit =
        await SharedPrefHelper.getBool(PrefsConstants.onBoarding) ?? false;
    if (isLoggedIn) {
      delayedNavigation(context, Routes.homeView);
    } else {
      isVisit
          ? delayedNavigation(context, Routes.logInView)
          : delayedNavigation(context, Routes.onBoarding);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        Assets.assetsImagesSplashImage,
        width: 250.w, // عرض متجاوب
        height: 250.h, // ارتفاع متجاوب
        fit: BoxFit.contain,
      ),
    );
  }
}

void delayedNavigation(BuildContext context, String path) {
  Future.delayed(Duration(seconds: 2), () {
    context.pushReplacementNamed(path);
  });
}
