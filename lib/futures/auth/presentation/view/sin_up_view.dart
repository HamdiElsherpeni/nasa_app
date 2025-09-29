import 'package:flutter/material.dart';
import 'package:nasa_app/futures/auth/presentation/view/widgets/sin_up_view_body.dart';

class SinUpView extends StatelessWidget {
  const SinUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 11, 55),
      body: SafeArea(child: SinUpViewBody()),
    );
  }
}
