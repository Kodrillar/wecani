import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wecani/src/core/utils/constants.dart';
import 'package:wecani/src/core/utils/ui/color/colors.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return AppBar(
      // backgroundColor: Colors.cyan,
      leading: Icon(
        Iconsax.menu_14,
        color: Theme.of(context).colorScheme.primary,
      ),
      actions: const [
        QuestionPointText(),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: kPadding, bottom: kPadding),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Text.rich(
                TextSpan(
                  text: 'Find answers to any',
                  style: theme.textTheme.headlineSmall,
                  children: [
                    TextSpan(
                      text: ' Question.',
                      style: theme.textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(160);
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
