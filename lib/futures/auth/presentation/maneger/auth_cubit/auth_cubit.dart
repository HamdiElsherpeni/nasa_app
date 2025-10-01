import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  GlobalKey<FormState> sinInFormKey = GlobalKey();
  TextEditingController sinInEmail = TextEditingController();
  TextEditingController sinInPassword = TextEditingController();
  GlobalKey<FormState> sinUpFormKey = GlobalKey();
  TextEditingController sinUpFirstName = TextEditingController();
  TextEditingController sinUpLastName = TextEditingController();
  TextEditingController sinUpPassword = TextEditingController();
  TextEditingController sinUpEmail = TextEditingController();
}
