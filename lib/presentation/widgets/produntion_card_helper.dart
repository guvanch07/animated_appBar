import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:test_appbar_animation/presentation/core/theme/text_style.dart';
import 'package:test_appbar_animation/presentation/widgets/card_helper.dart';

class ReUsebleProductionWidget extends StatelessWidget {
  const ReUsebleProductionWidget({
    Key? key,
    required this.title,
    required this.maintitle,
    required this.path,
    required this.widget,
    this.whichWidgetExist,
    required this.isWidgetExist,
    this.height,
  }) : super(key: key);
  final String title;
  final String maintitle;
  final String path;
  final Widget widget;
  final Widget? whichWidgetExist;
  final bool isWidgetExist;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Style.headline1),
          const SizedBox(height: 10),
          CardHelper(
            height: height ?? 90,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(path),
                SizedBox(width: 250, child: widget)
              ],
            ),
          ),
          SizedBox(
            height: isWidgetExist ? 20 : 0,
          ),
          isWidgetExist
              ? whichWidgetExist ?? const SizedBox()
              : const SizedBox()
        ],
      ),
    );
  }
}
