import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wecani/src/core/utils/ui/color/colors.dart';

class AppTheme {
  ThemeData getAppTheme(BuildContext context) {
    return ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.darkPurple,
        onPrimary: AppColors.lightPurple,
        secondary: AppColors.darkPurple,
        onSecondary: AppColors.lightBlue,
        error: Colors.red,
        onError: Colors.white,
        background: AppColors.darkPurple,
        onBackground: AppColors.lightPurple,
        surface: AppColors.darkPurple,
        onSurface: AppColors.lightPurple,
      ),
      scaffoldBackgroundColor: AppColors.lightBlue,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.lightBlue,
        elevation: 0,
      ),
      textTheme: TextTheme(
        bodyMedium: const TextStyle(
          color: AppColors.darkPurple,
        ),
        headlineMedium: TextStyle(
          color: AppColors.darkPurple,
          fontSize: 24,
          fontFamily: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ).fontFamily,
        ),
        headlineSmall: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: AppColors.darkPurple,
        ),
        titleMedium: TextStyle(
          color: AppColors.lightPurple,
          fontSize: 20,
          fontFamily:
              GoogleFonts.poppins(fontWeight: FontWeight.bold).fontFamily,
        ),
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll(Size.fromHeight(50)),
          elevation: MaterialStatePropertyAll(0),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
        ),
      ),
      outlinedButtonTheme: const OutlinedButtonThemeData(
        style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll(Size.fromHeight(50)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
        ),
      ),
      textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
        ),
        hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: AppColors.lightPurple,
            fontFamily: GoogleFonts.poppins().fontFamily),
      ),
    );
  }

  ThemeData getDarkTheme() {
    return ThemeData.dark();
  }
}

final appThemeProvider = Provider<AppTheme>((ref) => AppTheme());
