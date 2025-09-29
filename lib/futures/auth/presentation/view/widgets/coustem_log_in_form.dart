import 'package:flutter/material.dart';
import 'package:nasa_app/core/database/my_cache_helper.dart';
import 'package:nasa_app/core/functions/coustem_navigate.dart';
import 'package:nasa_app/core/routes/app_router.dart';
import 'package:nasa_app/core/widgets/coustem_eleveted_butten.dart';
import 'package:nasa_app/core/widgets/coustem_text_form_filed.dart';

class CustemLogInForm extends StatefulWidget {
  CustemLogInForm({super.key});

  @override
  State<CustemLogInForm> createState() => _CustemLogInFormState();
}

class _CustemLogInFormState extends State<CustemLogInForm> {
  bool password = false;
  final sinUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: sinUpFormKey,
      child: Column(
        children: [
          CoustemTextFormFailed(
            leble: 'Email Address',
            hent: 'You@gmail.com',
            onChanged: (emailAdders) {},
          ),
          SizedBox(height: 30),
          CoustemTextFormFailed(
            leble: 'Password',
            hent: '*********',
            onChanged: (password) {},
            obscure: password,
            sufixIcon: IconButton(
              onPressed: () {
                password = !password;
                setState(() {});
              },
              icon: password
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {
                coustemNavigatPush(context, AppRouter.forgetPass);
              },
              child: Text(
                'Forgot Password ?',
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ),
          ),
          SizedBox(height: 40),
          CoustemElevetedBoutten(
            text: 'Sign In',
            onPressed: () {
              coustemNavigatPushReplace(context, AppRouter.homeView);
               SharedPreferenceManager.saveIsViset(true);
            },
          ),
        ],
      ),
    );
  }
}
