import 'package:flutter/material.dart';
import 'package:wecani/src/core/utils/constants.dart';
import 'package:wecani/src/core/utils/ui/spacing/app_spacing.dart';
import 'package:wecani/src/core/widgets/button/custom_filled_button.dart';
import 'package:wecani/src/core/widgets/custom_text_field.dart';
import 'package:wecani/src/routing/app_route.dart';

class PasswordResetCodeScreen extends StatefulWidget {
  const PasswordResetCodeScreen({super.key});

  @override
  State<PasswordResetCodeScreen> createState() =>
      _PasswordResetCodeScreenState();
}

class _PasswordResetCodeScreenState extends State<PasswordResetCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //TODO: Make padding reusable
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .7,
                  child: const Text(
                    'Enter your email address to get a reset code',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SpaceH(40),
                const CustomTextField(hintText: 'Email'),
                const SpaceH(60),
                SizedBox(
                  width: double.infinity,
                  child: CustomFilledButton(
                    onPressed: () => Navigator.of(context)
                        .pushNamed(AppRoutes.passwordReset.route),
                    child: const Text('Get reset code'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
