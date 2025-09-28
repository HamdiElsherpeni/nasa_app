import 'package:flutter/material.dart';
import 'package:nasa_app/futures/auth/presentation/view/widgets/sin_up_view_body.dart';

class SinUpView extends StatelessWidget {
  const SinUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SinUpViewBody()),);
  }
}