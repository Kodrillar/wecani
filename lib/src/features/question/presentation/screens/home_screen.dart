import 'package:flutter/material.dart';
import 'package:wecani/src/features/question/presentation/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: const Center(
        child: Text('Coming soon...'),
      ),
    );

    //  Text(
    //   'Hello world',
    //   style: Theme.of(context).textTheme.bodyMedium,
    // ),
  }
}
