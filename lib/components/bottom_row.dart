import 'package:flutter/material.dart';

class BottomRow extends StatelessWidget {
  final String text;
  final double boxWidth;
  final double boxHeight;
  const BottomRow({
    super.key,
    required this.text,
    required this.boxWidth,
    required this.boxHeight
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: boxWidth,
          height: boxHeight,
          child: MaterialButton(
            onPressed: (){},
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: Text(text, style: const TextStyle(fontSize: 16)),
          ),
        ),
      ],
    );
  }
}
