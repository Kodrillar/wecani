import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wecani/src/routing/app_route.dart';
import 'package:wecani/src/theme/app_theme.dart';

class WecaniApp extends ConsumerWidget {
  const WecaniApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppTheme appTheme = ref.watch(appThemeProvider);

    return MaterialApp(
      title: 'Wecani',
      debugShowCheckedModeBanner: false,
      theme: appTheme.getAppTheme(context),
      darkTheme: appTheme.getDarkTheme(),
      themeMode: ThemeMode.light,
      routes: AppRoute.routes,
      initialRoute: AppRoutes.home.route,
    );
  }
}
