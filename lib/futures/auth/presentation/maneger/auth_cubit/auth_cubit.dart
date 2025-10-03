import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:nasa_app/core/errors/exceptions.dart';
import 'package:nasa_app/core/networking/api_endpoints.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  
  AuthCubit() : super(AuthInitial());
  final GlobalKey<FormState> sinInFormKey = GlobalKey();
  final TextEditingController sinInEmail = TextEditingController();
  final TextEditingController sinInPassword = TextEditingController();
  final GlobalKey<FormState> sinUpFormKey = GlobalKey();
  final TextEditingController sinUpFirstName = TextEditingController();
  final TextEditingController sinUpLastName = TextEditingController();
  final TextEditingController sinUpPassword = TextEditingController();
  final TextEditingController sinUpEmail = TextEditingController();
  @override
  Future<void> close() {
   sinInEmail.dispose();
   sinUpEmail.dispose();
   sinInPassword.dispose();
   sinUpFirstName.dispose();
   sinUpLastName.dispose();
   sinUpPassword.dispose();
    return super.close();
  }
}
