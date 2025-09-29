import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 8.w), // متجاوب
        child: Column(
          children: [
            CoustemTextFormFailed(
              leble: 'First Name',
              hent: 'Morgan',
              onChanged: (firstName) {},
            ),
            SizedBox(height: 20.h), // متجاوب
            CoustemTextFormFailed(
              leble: 'Last Name',
              hent: 'Ysry',
              onChanged: (lastName) {},
            ),
            SizedBox(height: 20.h),
            CoustemTextFormFailed(
              leble: 'Email Address',
              hent: 'You@gmail.com',
              onChanged: (emailAdders) {},
            ),
            SizedBox(height: 20.h),
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
                    ? Icon(Icons.visibility_off, size: 20.sp)
                    : Icon(Icons.visibility, size: 20.sp),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Checkbox(
                  value: chced,
                  onChanged: (val) {
                    setState(() {
                      chced = !chced;
                    });
                  },
                ),
                Expanded(
                  child: Text(
                    'I have agreed to our Terms and Conditions',
                    style: TextStyle(
                      fontSize: 12.sp, // حجم نص متجاوب
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            CoustemElevetedBoutten(
              text: 'Sign Up',
              color: chced == false ? Colors.grey : null,
              onPressed: chced
                  ? () => coustemNavigatPush(context, AppRouter.logInView)
                  : null,
              height: 65.h,    // ارتفاع متجاوب
              fontSize: 18.sp, // حجم نص متجاوب
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
