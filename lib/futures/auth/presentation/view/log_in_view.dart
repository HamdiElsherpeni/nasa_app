import 'package:flutter/material.dart';
import 'package:nasa_app/core/resources/app_colors.dart';
import 'package:nasa_app/futures/auth/presentation/view/widgets/log_in_view_body.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 11, 55),
      body: SafeArea(child: LogInViewBody()),
    );
  }
}
