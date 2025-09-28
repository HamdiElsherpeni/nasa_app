import 'package:flutter/material.dart';
import 'package:nasa_app/futures/splash/presentation/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: SplashViewBody()));
  }
}
