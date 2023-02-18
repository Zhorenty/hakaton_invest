import 'package:flutter/material.dart';
import 'package:mobile_app/helper/color_constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(
          child: Text(
            'Brick Funds',
            style: TextStyle(
              fontSize: 36,
              fontFamily: 'Outfit',
              fontWeight: FontWeight.bold,
              color: ColorConstants.primary,
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
