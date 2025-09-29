import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasa_app/core/database/my_cache_helper.dart';
import 'package:nasa_app/core/functions/coustem_navigate.dart';
import 'package:nasa_app/core/routes/app_router.dart';
import 'package:nasa_app/core/resources/app_assets.dart';

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
    bool isVisit = await SharedPreferenceManager.getIsViset() ?? false;
    if (isVisit) {
      delayedNavigation(context, AppRouter.logInView);
    } else {
      delayedNavigation(context, AppRouter.onBording);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        Assets.assetsImagesSplashImage,
        width: 200.w,  // عرض متجاوب
        height: 200.h, // ارتفاع متجاوب
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
