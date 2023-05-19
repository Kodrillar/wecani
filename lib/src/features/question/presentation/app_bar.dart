import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wecani/src/core/utils/ui/color/colors.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Iconsax.menu_14,
        color: Theme.of(context).colorScheme.primary,
      ),
      actions: const [
        QuestionPointText(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}

class QuestionPointText extends StatelessWidget {
  const QuestionPointText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.bodyMedium;
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Text(
            '20',
            style: textStyle?.copyWith(fontWeight: FontWeight.w900),
          ),
          Text(
            'Qps',
            style: textStyle?.copyWith(
              color: AppColors.lightPurple,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}
