import 'package:flutter/material.dart';
import 'package:nasa_app/core/resources/app_assets.dart';
import 'package:nasa_app/core/resources/app_text_style.dart';

class CoustemAuthDighin extends StatelessWidget {
  const CoustemAuthDighin({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(Assets.assetsImagesPlant)),
          ),
        ),
        Text(
          text,
          style: AppTextStyle.pcificow400siz64,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
