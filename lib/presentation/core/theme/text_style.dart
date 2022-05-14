import 'package:flutter/material.dart';
import 'package:test_appbar_animation/presentation/core/theme/theme.dart';

abstract class Style {
  static const headline1 = TextStyle(
      fontFamily: "Matter",
      color: AppColors.textMain,
      fontSize: 18,
      fontWeight: FontWeight.w600);
  static const headline2 = TextStyle(
      fontFamily: "Matter",
      color: AppColors.textMain,
      fontSize: 15,
      fontWeight: FontWeight.w400);
  static const headline3 = TextStyle(
      fontFamily: "Matter",
      color: AppColors.textMain,
      fontSize: 13,
      fontWeight: FontWeight.w500);
  static const headlineDays = TextStyle(
      fontFamily: "Matter",
      color: AppColors.textMain,
      fontSize: 16,
      fontWeight: FontWeight.w700);
}
