import 'package:flutter/material.dart';
import 'package:mobile_app/model/property_model.dart';
import 'package:mobile_app/view/components/button_widget.dart';
import 'package:mobile_app/view/components/card_widget.dart';

void main() {
  runApp(const BrickFundsApp());
}

class BrickFundsApp extends StatelessWidget {
  const BrickFundsApp({super.key});

  @override
  Widget build(BuildContext context) {
    Property property;
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 100),
            // ButtonWidget(
            //   child: Text('asda'),
            //   onPressed: () {},
            // ),
            PropertyCard(),
          ],
        ),
      ),
    );
  }
}
