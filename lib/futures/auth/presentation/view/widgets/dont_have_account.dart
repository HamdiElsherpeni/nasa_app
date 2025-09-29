import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nasa_app/core/functions/coustem_navigate.dart';
import 'package:nasa_app/core/routes/app_router.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an account ?',
          style: TextStyle(
            fontSize: 10,
            color: const Color.fromARGB(255, 77, 76, 76),
          ),
        ),
        TextButton(
          onPressed: () {
            coustemNavigatPush(context, AppRouter.sinUpView);
          },
          child: Text(
            'Sign Up',
            style: TextStyle(fontSize: 10, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
