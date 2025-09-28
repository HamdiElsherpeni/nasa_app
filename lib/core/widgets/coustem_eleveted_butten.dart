import 'package:flutter/material.dart';

class CoustemElevetedBoutten extends StatelessWidget {
  const CoustemElevetedBoutten({
    super.key,
    this.onPressed,
    required this.text,
    this.color,
  });

  final void Function()? onPressed;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
         
        
          child: ElevatedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(
                color ?? const Color.fromARGB(255, 74, 57, 226),
              ),
              foregroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              ),
            ),
            child: Text(text),
          ),
        ),
      ],
    );
  }
}
