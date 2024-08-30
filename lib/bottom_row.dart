import 'package:flutter/material.dart';

class BottomRow extends StatelessWidget {
  const BottomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: (){},
            child: const Text('1')
        ),
        OutlinedButton(
            onPressed: (){},
            child: const Text('2')
        ),
        IconButton(
            onPressed: (){},
            icon: const Icon(Icons.thumb_up)
        ),
        FloatingActionButton(
            onPressed: (){},
            child: const Icon(Icons.add),
        )
      ],
    );
  }
}
