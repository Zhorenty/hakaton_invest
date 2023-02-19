import 'package:flutter/material.dart';
import 'package:mobile_app/helper/color_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.onChanged,
    this.width = 350,
    this.validator,
    this.icon,
  });

  final String? hintText;
  final void Function(String)? onChanged;
  final double width;
  final String? Function(String?)? validator;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(35),
      child: SizedBox(
        width: width,
        child: TextFormField(
          onChanged: onChanged,
          validator: validator,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: ColorConstants.primary,
            ),
            border: InputBorder.none,
            fillColor: ColorConstants.primary.withOpacity(0.7),
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ),
      ),
    );
  }
}
