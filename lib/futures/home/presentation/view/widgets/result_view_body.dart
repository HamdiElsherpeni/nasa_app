import 'package:flutter/material.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/coustem_app_bar.dart';

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CoustemAppBar(
            context:context,
            titel: 'Classification Results',
            subTitel:
                'Analysis results and performance metrics',
          ),
        ],
      ),
    );
  }
}