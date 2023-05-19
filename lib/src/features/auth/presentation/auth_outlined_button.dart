import 'package:flutter/material.dart';
import 'package:wecani/src/core/utils/ui/spacing/app_spacing.dart';
import 'package:wecani/src/core/widgets/button/custom_outlined_button.dart';

class AuthOutlinedButton extends StatelessWidget {
  const AuthOutlinedButton(
      {super.key,
      required this.buttonName,
      required this.iconData,
      this.onPressed});

  final IconData iconData;
  final String buttonName;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
          ),
          const SpaceW(width: 20),
          Text(buttonName)
        ],
      ),
    );
  }
}
