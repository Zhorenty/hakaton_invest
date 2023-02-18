import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 55),
        Center(
          // width: double.infinity,
          // height: 80,
          child: Text(
            'Brick Funds',
            style: TextStyle(
                fontSize: 36,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.bold,
                color: Color(0xff1B1AFF)),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
