import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wecani/src/core/utils/constants.dart';
import 'package:wecani/src/core/utils/ui/spacing/app_spacing.dart';
import 'package:wecani/src/features/question/presentation/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: const HomeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kPadding,
          vertical: kPadding / 2,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(text: 'Latest', theme: theme),
              const SpaceH(15),

              //LATEST Questions
              LatestQuestionsList(theme: theme),

              const SpaceH(30),

              //MY Questions
              MyQuestionsHeader(theme: theme),

              const SpaceH(10),
              MyQuestionsList(theme: theme),
              //  ...[]
            ],
          ),
        ),
      ),
    );
  }
}

class MyQuestionsList extends StatelessWidget {
  const MyQuestionsList({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return QuestionCard(theme: theme);
        },
        separatorBuilder: (context, index) => const SpaceH(15),
        itemCount: 3,
      ),
    );
  }
}

class MyQuestionsHeader extends StatelessWidget {
  const MyQuestionsHeader({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleText(theme: theme, text: 'My question'),
        TextButton(
          onPressed: () {},
          child: const Text('See more'),
        )
      ],
    );
  }
}

class LatestQuestionsList extends StatelessWidget {
  const LatestQuestionsList({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 1) {
            return LatestQuestionCard(
              theme: theme,
              name: 'Jason Zulu',
            );
          }
          if (index == 2) {
            return LatestQuestionCard(
              theme: theme,
              name: 'Ali Mosow',
            );
          }
          return LatestQuestionCard(
            theme: theme,
            name: 'Bukola Zart',
          );
        },
        separatorBuilder: (context, index) => const SpaceW(15),
        itemCount: 3,
      ),
    );
  }
}

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onError,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        minVerticalPadding: 10,
        title: Text(
          'Are fruit also vegetables?',
          style: theme.textTheme.bodyMedium?.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          'Research has it that we need vegetables to function jtex eys',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.bodyMedium
              ?.copyWith(color: theme.colorScheme.onPrimary, fontSize: 11),
        ),
        trailing: SizedBox(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '10',
              style: theme.textTheme.titleMedium?.copyWith(
                fontSize: 11,
                color: theme.colorScheme.primary,
              ),
            ),
            Text(
              'mins',
              style: theme.textTheme.titleMedium?.copyWith(
                fontSize: 11,
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.theme, required this.text});

  final ThemeData theme;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: theme.textTheme.titleMedium,
    );
  }
}

class LatestQuestionCard extends StatelessWidget {
  const LatestQuestionCard(
      {super.key, required this.theme, required this.name});

  final ThemeData theme;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
          width: MediaQuery.of(context).size.width * 0.89,
          color: theme.colorScheme.onError,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Iconsax.add),
                      label: const Text(
                        'Answer',
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: theme.textTheme.headlineSmall!.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SpaceH(10),
                    Text(
                      'What\'s the best way to inform an engineering team of retrospectives? s the bes way to inform an engineering team of retrospectives?',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        color: theme.colorScheme.onPrimary,
                      ),
                    ),
                    const SpaceH(10),
                    Text(
                      'Just now',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onPrimary,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
