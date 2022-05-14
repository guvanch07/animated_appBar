import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_appbar_animation/presentation/core/theme/text_style.dart';

class ColorfulCard extends StatelessWidget {
  const ColorfulCard({
    Key? key,
    required this.color,
    required this.title,
    required this.subTitle,
    required this.path,
  }) : super(key: key);
  final List<Color> color;
  final String title;
  final String subTitle;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 110,
      height: 140,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(path),
          Text(
            title,
            style: Style.headline1.copyWith(fontSize: 14, color: Colors.white),
          ),
          Text(subTitle,
              style:
                  Style.headline3.copyWith(fontSize: 10, color: Colors.white)),
        ],
      ),
    );
  }
}
