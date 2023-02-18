import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/view_model/auth/auth_cubit.dart';
import 'package:mobile_app/view_model/auth/auth_states.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final authCubit = AuthCubit();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder(
      bloc: authCubit,
      builder: (context, state) {
        if (authCubit.state is AuthInitialState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(hintText: 'Логин'),
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'Пароль'),
              ),
              TextButton(
                onPressed: () {
                  authCubit.logIn();
                },
                child: const Text('Логин'),
              )
            ],
          );
        } else if (authCubit.state is AuthLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return const SizedBox();
      },
    ));
  }
}
