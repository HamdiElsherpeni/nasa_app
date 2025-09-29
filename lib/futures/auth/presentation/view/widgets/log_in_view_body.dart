import 'package:flutter/material.dart';
import 'package:nasa_app/core/resources/app_assets.dart';
import 'package:nasa_app/core/resources/app_text_style.dart';
import 'package:nasa_app/futures/auth/presentation/view/widgets/coustem_auth_disighin.dart';
import 'package:nasa_app/futures/auth/presentation/view/widgets/coustem_log_in_form.dart';
import 'package:nasa_app/futures/auth/presentation/view/widgets/dont_have_account.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(
        children: [
          SizedBox(height: 40),

          CoustemAuthDighin(text: 'LogIn'),
          SizedBox(height: 25),
          CustemLogInForm(),
          SizedBox(height: 5),
          DontHaveAccount(),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
