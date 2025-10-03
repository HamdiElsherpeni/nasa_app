
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
