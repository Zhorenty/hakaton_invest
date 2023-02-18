import 'package:flutter/material.dart';

import 'package:mobile_app/view/screens/search_screen.dart';

void main() {
  runApp(const BrickFundsApp());
}

class BrickFundsApp extends StatelessWidget {
  const BrickFundsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SearchScreen(),
      ),
    );
  }
}
