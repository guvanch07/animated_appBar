import 'package:flutter/material.dart';

abstract class AppColors {
  static const accent = Colors.white;
  static const textMain = Colors.black;
  static const cardDark = Colors.black;
  static const textUnSelec = Color(0xff656565);
  static const cardWhite = Color(0xFFF0F2F5);
  static const activeColor = Color(0xFF87C6F5);
  static const textUnselected = Colors.white54;
  static const iconColor = Colors.black;
  static const gradien1 = [Color(0xff3465C3), Color(0xff5785DE)];
  static const gradien2 = [Color(0xffEC4E27), Color(0xffF47E61)];
  static const gradien3 = [Color(0xff6B34C3), Color(0xff8E5EDB)];
}

abstract class _DarkColors {
  static const background = Color(0xFF030616);
  static const card = AppColors.cardDark;
}

/// Reference to the application theme.
abstract class AppTheme {
  static const accentColor = AppColors.accent;
  static final visualDensity = VisualDensity.adaptivePlatformDensity;
  static ThemeData dark() => ThemeData(
        scaffoldBackgroundColor: _DarkColors.background,
        splashColor: accentColor,
        visualDensity: visualDensity,
        cardTheme: const CardTheme(color: AppColors.cardDark),
        fontFamily: "TT Norms",
        cardColor: _DarkColors.card,
        iconTheme: const IconThemeData(color: AppColors.iconColor),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accentColor),
      );
}
