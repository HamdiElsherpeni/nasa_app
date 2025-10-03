import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_app/core/database/my_cache_helper.dart';
import 'package:nasa_app/core/database/prefs_constants.dart';
import 'package:nasa_app/core/functions/coustem_navigate.dart';
import 'package:nasa_app/core/routes/app_router.dart';
import 'package:nasa_app/core/resources/app_assets.dart';
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
      delayedNavigation(context, AppRouter.homeView);
    } else {
      isVisit
          ? delayedNavigation(context, AppRouter.logInView)
          : delayedNavigation(context, AppRouter.onBording);
      
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
    coustemNavigatPushReplace(context, path);
  });
}
