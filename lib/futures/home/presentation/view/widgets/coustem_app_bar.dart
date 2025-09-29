import 'package:flutter/material.dart';
import 'package:nasa_app/core/resources/app_text_style.dart';

class CoustemAppBar extends StatelessWidget {
  const CoustemAppBar({super.key, required this.titel, required this.subTitel,context});
  final String titel;
  final String subTitel;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // **هذا الجزء يجب أن يكون في Builder ليعمل بشكل صحيح**
            Builder( 
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    // نستخدم Scaffold.of(context) للوصول إلى Scaffold الذي يحتوي هذا الـ context
                    // هذا ينجح لأن الـ Builder يوفر context أدنى من Scaffold
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu, color: Colors.white, size: 28),
                );
              },
            ),
            const SizedBox(width: 8),
            Text(
              titel,
              style: const TextStyle( // تم إضافة const هنا لتحسين الأداء
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(
          subTitel,
          // افتراض وجود AppTextStyle.poppinsow300siz16
          style: (AppTextStyle.poppinsow300siz16 as TextStyle).copyWith(color: Colors.grey), 
        ),

        const SizedBox(height: 8),

        Divider(
          color: Colors.grey, // لون الخط
          thickness: 0.5, // سمك الخط
          indent: 0, // مسافة من البداية
          endIndent: 0, // مسافة من النهاية
        ),
        // 🔹 Model Active + دايرة بتنور وتطفي بالراحة
      ],
    );
  }
}
