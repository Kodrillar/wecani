import 'package:flutter/material.dart';
import 'package:wecani/src/core/utils/ui/color/colors.dart';
import 'package:wecani/src/core/utils/ui/spacing/app_spacing.dart';

class WecaniAlertDialog extends StatelessWidget {
  const WecaniAlertDialog(
      {super.key, required this.title, required this.content});

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.transparent,
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //TODO: Add title textstyle from theme
              Text(title),
              const SpaceH(10),
              Text(content),
              const SpaceH(20),
              const Center(child: AlertDialogButton(child: Text('Ok')))
            ],
          ),
        ),
      ),
    );
  }
}

class AlertDialogButton extends StatelessWidget {
  const AlertDialogButton({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Colors.white),
        side: MaterialStatePropertyAll(
          BorderSide.merge(
            BorderSide(width: 0.5, color: theme.colorScheme.onPrimary),
            BorderSide(width: 0.5, color: theme.colorScheme.onPrimary),
          ),
        ),
        fixedSize: const MaterialStatePropertyAll(Size(80, 40)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      onPressed: () {},
      child: child,
    );
  }
}
