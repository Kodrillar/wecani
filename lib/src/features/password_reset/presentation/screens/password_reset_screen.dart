import 'package:flutter/material.dart';
import 'package:wecani/src/core/utils/constants.dart';
import 'package:wecani/src/core/utils/ui/spacing/app_spacing.dart';
import 'package:wecani/src/core/widgets/button/custom_filled_button.dart';
import 'package:wecani/src/core/widgets/custom_text_field.dart';
import 'package:wecani/src/features/password_reset/presentation/custom_otp_textfield.dart';

class PasswordResetScreen extends StatefulWidget {
  const PasswordResetScreen({super.key});

  @override
  State<PasswordResetScreen> createState() => _PasswordResetScreenState();
}

class _PasswordResetScreenState extends State<PasswordResetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .7,
                  child: const Text(
                    'Enter the reset code sent to your email address.',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SpaceH(40),
                const CustomOtpTextField(),
                const SpaceH(40),
                const CustomTextField(hintText: 'Password'),
                const SpaceH(20),
                const CustomTextField(hintText: 'Confirm password'),
                const SpaceH(60),
                SizedBox(
                  width: double.infinity,
                  child: CustomFilledButton(
                    child: const Text('Reset'),
                    onPressed: () {},
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
