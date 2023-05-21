import 'package:flutter/material.dart';
import 'package:wecani/src/core/utils/ui/spacing/app_spacing.dart';

class AuthOptionButton extends StatelessWidget {
  const AuthOptionButton({
    super.key,
    required this.authOptionDescriptionText,
    required this.authOptionText,
    this.onPressed,
  });
  final String authOptionDescriptionText;
  final String authOptionText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            authOptionDescriptionText,
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
          ),
          const SpaceW(2),
          Text(authOptionText)
        ],
      ),
    );
  }
}
