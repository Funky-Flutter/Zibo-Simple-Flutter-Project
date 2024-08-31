import 'package:flutter/material.dart';
import 'package:zibbo_flutter_midsem/components/bottom_row.dart';
import 'package:zibbo_flutter_midsem/components/orientation_indicator.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            'Welcome to Dashboard, Habib',
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),

      body: SafeArea(child: OrientationBuilder(builder: (context, orientation) {
        return Column(
          children: [
            Expanded(child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 32.0, bottom: 16.0),
              child: const Column(
                children: [
                  BottomRow(boxWidth: 350, boxHeight: 50, text: 'PAY FEES'),
                  SizedBox(height: 20),
                  BottomRow(boxWidth: 350, boxHeight: 50, text: "CHECK RESULT"),
                  SizedBox(height: 20),
                  BottomRow(boxWidth: 350, boxHeight: 50, text: "REGISTER COURSE"),
                  SizedBox(height: 40),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BottomRow(boxWidth: 165, boxHeight: 50, text: "ACTIVITIES"),
                      SizedBox(width: 20),
                      BottomRow(boxWidth: 165, boxHeight: 50, text: "RECEIPTS"),
                    ],
                  )
                ],
              ),
            ),
          )),
            OrientationIndicator(orientation: orientation)
          ],
        );
      })),
    );
  }
}
