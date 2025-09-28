import 'package:flutter/material.dart';
import 'package:nasa_app/futures/auth/presentation/view/widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: ForgetPasswordViewBody(),));
  }
}