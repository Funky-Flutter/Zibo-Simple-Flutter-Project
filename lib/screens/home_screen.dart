import 'package:flutter/material.dart';
import '../components/decorated_container.dart';
import '../components/form_example.dart';
import '../components/image_example.dart';
import '../components/orientation_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),

      body: SafeArea(child: OrientationBuilder(builder: (context, orientation) {
        return Column(
          children: [
            const Expanded(child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),

              child: Column(
                children: [
                  DecoratedContainer(),
                  SizedBox(height: 20),
                  FormExample(),
                  SizedBox(height: 20),
                  ImageExample(),
                  SizedBox(height: 20),
                ],
              ),
            )),
            OrientationIndicator(orientation: orientation),
          ],
        );
    }),
    ));
  }
}
