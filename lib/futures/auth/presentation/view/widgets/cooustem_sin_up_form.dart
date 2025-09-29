import 'package:flutter/material.dart';
import 'package:nasa_app/core/functions/coustem_navigate.dart';
import 'package:nasa_app/core/routes/app_router.dart';
import 'package:nasa_app/core/widgets/coustem_eleveted_butten.dart';
import 'package:nasa_app/core/widgets/coustem_text_form_filed.dart';

class CoustemSinUpForm extends StatefulWidget {
  const CoustemSinUpForm({super.key});

  @override
  State<CoustemSinUpForm> createState() => _CoustemSinUpFormState();
}

class _CoustemSinUpFormState extends State<CoustemSinUpForm> {
  bool chced = false;
  final _sinUpFormKey = GlobalKey<FormState>();

  bool password = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _sinUpFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            CoustemTextFormFailed(
              leble: 'First Name',
              hent: 'Morgan',

              onChanged: (firstName) {},
            ),
            SizedBox(height: 20),
            CoustemTextFormFailed(
              leble: 'Last Name',
              hent: 'Ysry',
              onChanged: (lastNme) {},
            ),
            SizedBox(height: 20),
            CoustemTextFormFailed(
              leble: 'Email Address',
              hent: 'You@gmail.com',
              onChanged: (emailAdders) {},
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 20),
            SizedBox(
              height: 14,
              child: Row(
                children: [
                  Checkbox(
                    value: chced,
                    onChanged: (vall) {
                      setState(() {});
                      chced = !chced;
                    },
                  ),
                  Text(
                    'I have agree to our Terms and Condition',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            CoustemElevetedBoutten(
              text: 'Sign Up',
              color: chced == false ? Colors.grey : null,
              onPressed: () async {
                if (chced == true) {
                  coustemNavigatPush(context, AppRouter.logInView);
                }
              },
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
