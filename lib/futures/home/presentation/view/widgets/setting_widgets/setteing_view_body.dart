import 'package:flutter/material.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/coustem_app_bar.dart';

class SetteingViewBody extends StatelessWidget {
  const SetteingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CoustemAppBar(
            context: context,
            titel: 'Settings & Configuration',
            subTitel: 'Customize model parameters and application preferences',
          ),
        ],
      ),
    );
  }
}
