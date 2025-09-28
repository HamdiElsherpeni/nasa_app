import 'package:flutter/material.dart';
import 'package:nasa_app/core/utils/app_assets.dart';
import 'package:nasa_app/core/utils/app_text_style.dart';
import 'package:nasa_app/futures/auth/presentation/view/widgets/coustem_log_in_form.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(Assets.assetsImagesPlant),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text('LogIn', style: AppTextStyle.poppinsow400siz),
          CustemLogInForm(),
        ],
      ),
    );
  }
}
