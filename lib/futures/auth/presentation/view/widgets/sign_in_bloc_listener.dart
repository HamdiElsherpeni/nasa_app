import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nasa_app/core/functions/coustem_navigate.dart';
import 'package:nasa_app/core/resources/app_text_style.dart' show AppTextStyle;
import 'package:nasa_app/core/routes/app_router.dart';
import 'package:nasa_app/futures/auth/presentation/maneger/sign_in_cubit/sign_in_cubit.dart';

class SignInBlocListener extends StatelessWidget {
  const SignInBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SingInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          coustemNavigatPush(context, AppRouter.homeView);
        } else if (state is SignInFailure) {
          GoRouter.of(context).pop();
          setUpErrorState(context, state.errorMassege);
        } else {
          setUpLoadingState(context);
        }
      },
      child: SizedBox.shrink(),
    );
  }
}

void setUpLoadingState(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Center(child: CircularProgressIndicator(color: Colors.white));
    },
  );
}

void setUpErrorState(context, errMessage) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        icon: Icon(Icons.error, color: Colors.red, size: 32),
        content: Text(errMessage, style: AppTextStyle.poppinsow300siz16),
        actions: [
          TextButton(
            onPressed: () => GoRouter.of(context).pop(),
            child: Text(
              'فهمت',
              style: AppTextStyle.poppinsow300siz16.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      );
    },
  );
}
