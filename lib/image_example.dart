import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/thinking_face.png'),
        const Icon(Icons.star, size: 50, color: Colors.yellow,)
      ],
    );
  }
}
