import 'package:flutter/material.dart';
import 'package:wecani/src/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:wecani/src/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:wecani/src/features/password_reset/presentation/screens/password_reset_screen.dart';

import 'package:wecani/src/features/question/presentation/screens/home_screen.dart';

import '../features/password_reset/presentation/screens/password_reset_code_screen.dart';

enum AppRoutes {
  signIn('/signIn'),
  signUp('/signUp'),
  home('/home'),
  passwordResetCode('/password_reset_code'),
  passwordReset('/password_reset');

  const AppRoutes(this.route);
  final String route;
}

class AppRoute {
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.home.route: (context) => const HomeScreen(),
    AppRoutes.signUp.route: (context) => const SignUpScreen(),
    AppRoutes.signIn.route: (context) => const SignInScreen(),
    AppRoutes.passwordResetCode.route: (context) =>
        const PasswordResetCodeScreen(),
    AppRoutes.passwordReset.route: (context) => const PasswordResetScreen(),
  };
}
