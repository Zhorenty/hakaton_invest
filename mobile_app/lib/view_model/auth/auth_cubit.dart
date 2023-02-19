import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/helper/navigator_key.dart';
import 'package:mobile_app/view/home/screens/home_screen.dart';
import 'package:mobile_app/view/onboarding/onboarding_screen.dart';
import 'package:mobile_app/view_model/auth/auth_states.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitialState());

  Future<void> logIn() async {
    emit(AuthLoadingState());
    await Future.delayed(const Duration(seconds: 1));
    pushToHomeScreen();
  }

  pushToHomeScreen() {
    NavigatorKey.navigatorKey.currentState!.push(
      MaterialPageRoute(
        builder: (context) => const OnboardingScreen(),
      ),
    );
  }
}
