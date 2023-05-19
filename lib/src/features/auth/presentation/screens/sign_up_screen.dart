import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wecani/src/core/utils/constants.dart';
import 'package:wecani/src/core/utils/ui/spacing/app_spacing.dart';
import 'package:wecani/src/core/widgets/wecani_alert_dialog.dart';
import 'package:wecani/src/features/auth/presentation/auth_outlined_button.dart';
import 'package:wecani/src/core/widgets/button/custom_filled_button.dart';
import 'package:wecani/src/core/widgets/custom_text_field.dart';
import 'package:wecani/src/features/auth/presentation/auth_app_bar.dart';
import 'package:wecani/src/features/auth/presentation/auth_option_button.dart';
import 'package:wecani/src/routing/app_route.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AuthAppBar(
        height: 70,
        title: Text(
          'Sign Up',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
                fontSize: 20,
              ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding),
        child: ListView(
          children: [
            const CustomTextField(hintText: 'Full name'),
            const SpaceH(20),
            const CustomTextField(hintText: 'Email'),
            const SpaceH(20),
            PasswordTextField(
              hintText: 'Password',
              onTap: () {},
              iconData: Iconsax.eye,
            ),
            const SpaceH(20),
            // Confirm password TextField.
            PasswordTextField(
              hintText: 'Confirm Password',
              onTap: () {},
              iconData: Iconsax.eye_slash,
            ),
            const SpaceH(20),
            CustomFilledButton(
              onPressed: () {},
              child: const Text('Sign Up'),
            ),

            const SpaceH(10),
            AuthOptionButton(
              authOptionDescriptionText: 'Already have an account?',
              authOptionText: 'Sign In',
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.signIn.route),
            ),
            const SpaceH(20),
            AuthOutlinedButton(
              buttonName: 'Sign in with Apple',
              onPressed: () => showDialog(
                context: context,
                //? testing alert dialog
                builder: (BuildContext context) => const WecaniAlertDialog(
                  title: 'Error',
                  content:
                      'Invalid email or password! Kindly recheck your credentials and try again.',
                ),
              ),
              iconData: Icons.apple,
            ),
            const SpaceH(10),
            AuthOutlinedButton(
              buttonName: 'Sign in with Facebook',
              iconData: Icons.facebook,
              onPressed: () {},
            ),
            const SpaceH(10),
            AuthOutlinedButton(
              buttonName: 'Sign in with Google',
              //TODO: change icon to Google icon
              onPressed: () {},
              iconData: Icons.login,
            ),
          ],
        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField(
      {super.key,
      required this.hintText,
      required this.iconData,
      required this.onTap});

  final String hintText;
  final IconData iconData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: hintText,
      suffix: InkWell(
        onTap: onTap,
        child: Icon(
          iconData,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
    );
  }
}
