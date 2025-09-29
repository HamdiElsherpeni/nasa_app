import 'package:flutter/material.dart';

class ClassificationCard extends StatelessWidget {
  // إضافة iconBackgroundColor كـ خاصية مطلوبة من نوع Color
  final String title; 
  final String totalCount;
  final String percentageChange;
  final String changeDescription;
  final IconData iconData;
  final Color iconBackgroundColor; // الخاصية الجديدة المطلوبة

  const ClassificationCard({
    super.key,
    required this.title, 
    required this.totalCount,
    required this.percentageChange,
    required this.changeDescription,
    required this.iconData,
    required this.iconBackgroundColor, // أصبحت مطلوبة
  });

  @override
  Widget build(BuildContext context) {
    // الألوان الثابتة لتصميم البطاقة
    const Color darkBackgroundColor = Color(0xFF1A1C2C);
    const Color primaryTextColor = Colors.white;
    const Color secondaryTextColor = Color(0xFF6C6F82);
    
    // تحديد لون النسبة المئوية
    final bool isPositive = percentageChange.startsWith('+') || percentageChange.endsWith('h');
    final Color increaseColor = isPositive ? const Color(0xFF5DD974) : Colors.red;

    // تم حذف المنطق الشرطي لتحديد لون الخلفية هنا، لأن اللون أصبح يتم تمريره

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: darkBackgroundColor,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // الجانب الأيسر: محتوى النص
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title, 
                style: const TextStyle(
                  color: secondaryTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              // الرقم الرئيسي
              Text(
                totalCount,
                style: const TextStyle(
                  color: primaryTextColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              // النسبة المئوية والتفاصيل
              Row(
                children: [
                  Text(
                    percentageChange,
                    style: TextStyle(
                      color: increaseColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    changeDescription,
                    style: const TextStyle(
                      color: secondaryTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // الجانب الأيمن: أيقونة الـ Container
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: iconBackgroundColor, // استخدام الخاصية التي تم تمريرها
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Icon(
              iconData,
              color: primaryTextColor,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
