import 'package:flutter/material.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/coustem_app_bar.dart';

class UploadViewBody extends StatelessWidget {
  const UploadViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CoustemAppBar(
            context:context,
            titel: 'Upload Transit Data',
            subTitel:
                'Upload CSV files containing Kepler telescope transit data for classification',
          ),
        ],
      ),
    );
  }
}
