import 'package:flutter/material.dart';
import 'package:nasa_app/core/resources/app_text_style.dart';
import 'package:nasa_app/futures/on_bording/data/model/on_bording_model.dart';

class OnBordingViewBody extends StatelessWidget {
  OnBordingViewBody({super.key, required this.controller, this.onPageChanged});
  final Function(int)? onPageChanged;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: BouncingScrollPhysics(),
      controller: controller,
      itemCount: onBordingData.length,
      onPageChanged: onPageChanged,
      itemBuilder: (contxet, indx) {
        return Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 280,
              width: 330,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(onBordingData[indx].imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.05),

            Text(
              onBordingData[indx].titel,
              textAlign: TextAlign.center,
              style: AppTextStyle.poppinsow400siz,
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Text(
              onBordingData[indx].subTitel,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12,color: Colors.grey),
              maxLines: 2,
            ),
          ],
        );
      },
    );
  }
}
