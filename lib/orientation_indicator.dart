import 'package:flutter/material.dart';

class OrientationIndicator extends StatelessWidget {
  // define the orientation instance variable,
  final Orientation orientation;
  const OrientationIndicator({super.key, required this.orientation});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.blueGrey,

      child: Text(
        orientation == Orientation.portrait ? 'Portrait mode' : 'Landscape mode',
        style: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
