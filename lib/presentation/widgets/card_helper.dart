import 'package:flutter/material.dart';

import 'package:test_appbar_animation/presentation/core/theme/theme.dart';

class CardHelper extends StatelessWidget {
  const CardHelper({
    Key? key,
    required this.child,
    required this.height,
    required this.width,
    this.padding,
  }) : super(key: key);
  final Widget child;
  final double height;
  final double width;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 10),
      height: height,
      width: width,
      child: child,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColors.cardWhite),
    );
  }
}
