import 'package:flutter/material.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/coustem_home_app_bar.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/coustem_home_list_view.dart';
import 'package:nasa_app/futures/home/presentation/view/widgets/couustem_classification_card.dart';

// هذا هو الملف الذي تم تحديثه
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // تم تعديل الهامش إلى 16.0 ليتناسب مع معظم الشاشات
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView(
        children: [
          CoustemHomeAppBar(),

          SizedBox(height: 24),
          CoustemHomeList(),
        ],
      ),
    );
  }
}
