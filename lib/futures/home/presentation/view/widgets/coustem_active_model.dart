import 'package:flutter/material.dart';
import 'package:nasa_app/core/resources/app_text_style.dart';

class CoustemActiveModel extends StatefulWidget {
  const CoustemActiveModel({super.key});

  @override
  State<CoustemActiveModel> createState() => _CoustemActiveModelState();
}

class _CoustemActiveModelState extends State<CoustemActiveModel>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // مدة التنفس
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.2, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Model Active",
          style: AppTextStyle.poppinsow300siz16.copyWith(
            color: Colors.greenAccent,
            fontWeight: FontWeight.w500,
            
          ),
        ),
        const SizedBox(width: 6),
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Container(
              width: 7,
              height: 7,
              decoration: BoxDecoration(
                color: Colors.green.withOpacity(_animation.value),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.greenAccent.withOpacity(_animation.value),
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
