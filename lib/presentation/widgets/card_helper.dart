import 'package:flutter/material.dart';

import 'package:test_appbar_animation/presentation/core/theme/theme.dart';

class CardHelper extends StatelessWidget {
  const CardHelper({
    Key? key,
    required this.child,
    required this.height,
    required this.width,
  }) : super(key: key);
  final Widget child;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: height,
      width: width,
      child: child,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColors.cardWhite),
    );
  }
}
