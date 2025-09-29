import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          height: 200.h, // ارتفاع متجاوب
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.assetsImagesPlant),
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(height: 10.h), // مسافة متجاوبة
        Text(
          text,
          style: AppTextStyle.pcificow400siz64.copyWith(
            fontSize: 40.sp, // حجم نص متجاوب
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
