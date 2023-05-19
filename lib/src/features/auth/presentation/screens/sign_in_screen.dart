import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wecani/src/core/utils/constants.dart';
import 'package:wecani/src/core/utils/ui/spacing/app_spacing.dart';
import 'package:wecani/src/features/auth/presentation/auth_outlined_button.dart';
import 'package:wecani/src/core/widgets/button/custom_filled_button.dart';
import 'package:wecani/src/core/widgets/custom_text_field.dart';
import 'package:wecani/src/features/auth/presentation/auth_app_bar.dart';
import 'package:wecani/src/features/auth/presentation/auth_option_button.dart';
import 'package:wecani/src/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:wecani/src/routing/app_route.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(
        height: 80,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back!',
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
            const SpaceH(2),
            const Text('Sign In'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            const CustomTextField(hintText: 'Email'),
            const SpaceH(10),
            const SignInPasswordTextField(),
            const SpaceH(25),
            CustomFilledButton(
              onPressed: () {},
              child: const Text('Sign In'),
            ),
            const SpaceH(10),
            AuthOptionButton(
              authOptionDescriptionText: 'New to Wecani?',
              authOptionText: 'Create an account',
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.signUp.route),
            ),
            const SpaceH(20),
            const AuthOutlinedButton(
              buttonName: 'Sign in with Apple',
              iconData: Icons.apple,
            ),
            const SpaceH(10),
            const AuthOutlinedButton(
              buttonName: 'Sign in with Facebook',
              iconData: Icons.facebook,
            ),
            const SpaceH(10),
            const AuthOutlinedButton(
              buttonName: 'Sign in with Google',
              //TODO: change icon to Google icon
              iconData: Icons.login,
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

class SignInPasswordTextField extends StatelessWidget {
  const SignInPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () => Navigator.of(context)
              .pushNamed(AppRoutes.passwordResetCode.route),
          child: const Text('Forgot password?'),
        ),
        const SpaceH(2.5),
        PasswordTextField(
          hintText: 'Password',
          iconData: Iconsax.eye,
          onTap: () {},
        )
      ],
    );
  }
}
