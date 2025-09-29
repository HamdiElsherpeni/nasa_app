import 'package:flutter/material.dart';
import 'package:nasa_app/core/functions/coustem_navigate.dart';
import 'package:nasa_app/core/routes/app_router.dart';
import 'package:nasa_app/core/widgets/coustem_eleveted_butten.dart';
import 'package:nasa_app/core/widgets/coustem_text_form_filed.dart';
import 'package:nasa_app/futures/auth/presentation/view/widgets/alredy_have_an_account.dart';
import 'package:nasa_app/futures/auth/presentation/view/widgets/cooustem_sin_up_form.dart';
import 'package:nasa_app/futures/auth/presentation/view/widgets/coustem_auth_disighin.dart';

class SinUpViewBody extends StatelessWidget {
  const SinUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 40),

        CoustemAuthDighin(text: 'SinUp'),
        SizedBox(height: 10),

        CoustemSinUpForm(),
        AlredyHaveanAcunt(),
      ],
    );
  }
}
