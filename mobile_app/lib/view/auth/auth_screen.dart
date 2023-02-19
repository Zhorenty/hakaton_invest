import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/components/custom_text_field.dart';
import 'package:mobile_app/helper/color_constants.dart';
import 'package:mobile_app/view_model/auth/auth_cubit.dart';
import 'package:mobile_app/view_model/auth/auth_states.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final authCubit = AuthCubit();
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder(
      bloc: authCubit,
      builder: (context, state) {
        if (authCubit.state is AuthInitialState) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  isLogin ? 'Вход' : 'Регистрация',
                  style: const TextStyle(
                    color: ColorConstants.primary,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(height: 100),
                const CustomTextField(
                  hintText: 'Логин',
                  icon: CupertinoIcons.person_fill,
                ),
                const SizedBox(height: 20),
                const CustomTextField(
                  hintText: 'Пароль',
                  icon: CupertinoIcons.lock_fill,
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    authCubit.logIn();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 15,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstants.primary,
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Text(
                      isLogin ? 'Войти' : 'Зарегистрироваться',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(isLogin
                        ? 'У вас нет аккаунта ?'
                        : 'У вас есть аккаунт ?'),
                    TextButton(
                      onPressed: () => setState(() {
                        isLogin = !isLogin;
                      }),
                      child: Text(isLogin ? 'Зарегистрироваться' : 'Войти'),
                    )
                  ],
                ),
              ],
            ),
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
