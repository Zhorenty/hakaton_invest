import 'package:flutter/material.dart';
import 'package:mobile_app/helper/navigator_key.dart';
import 'package:mobile_app/view/auth/auth_screen.dart';

void main() {
  runApp(const BrickFundsApp());
}

class BrickFundsApp extends StatelessWidget {
  const BrickFundsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigatorKey.navigatorKey,
      home: const AuthScreen(),
    );
  }
}
