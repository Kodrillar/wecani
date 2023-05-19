import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class CustomOtpTextField extends StatelessWidget {
  const CustomOtpTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: OtpTextField(
        showFieldAsBox: true,
        onSubmit: (String otpValue) {},
        enabledBorderColor: theme.colorScheme.onPrimary,
        focusedBorderColor: theme.colorScheme.primary,
        borderRadius: BorderRadius.zero,
        fieldWidth: 50,
      ),
    );
  }
}
