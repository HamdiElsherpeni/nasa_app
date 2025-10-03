import 'package:flutter/material.dart';
import 'package:nasa_app/core/resources/app_assets.dart';
import 'package:nasa_app/core/widgets/coutem_circel_image.dart';

class CoustemUserInfo extends StatelessWidget {
  const CoustemUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Row(
        children: [
          CoustemCircleImage(urlImage: Assets.assetsImagesPlant),
          SizedBox(width: 10),
          Text('Hamdi Elsherpeni'),
        ],
      ),
    );
  }
}
