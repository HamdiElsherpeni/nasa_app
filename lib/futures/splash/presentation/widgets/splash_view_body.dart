import 'package:flutter/material.dart';
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
  @override
  void initState() {
    super.initState();
    checkVisited();
  }

  Future<void> checkVisited() async {
    bool isVisit = await SharedPreferenceManager.getIsViset() ?? false;
    if (isVisit) {
      delayedNvigation(context, AppRouter.logInView);
    } else {
      delayedNvigation(context, AppRouter.onBording);
     
    }
  }

  Widget build(BuildContext context) {
    return Center(child: Image.asset(Assets.assetsImagesSplashImage));
  }
}

void delayedNvigation(context, String path) {
  Future.delayed(Duration(seconds: 2), () {
    coustemNavigatPushReplace(context, path);
  });
}
