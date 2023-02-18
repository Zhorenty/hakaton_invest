import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.child,
    required this.onPressed,
    this.isLoading = false,
  }) : super(key: key);

  final Widget? child;
  final VoidCallback? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 40,
          constraints: const BoxConstraints(minWidth: 40),
          decoration: BoxDecoration(
            color: const Color(0xff444444),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            key: ValueKey(isLoading),
            child: isLoading ? const Text(' Авторизация... ') : child,
          ),
        ),
      ),
    );
  }
}
