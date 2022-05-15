import 'package:flutter/material.dart';
import 'package:test_appbar_animation/domain/models/week_sorter.dart';
import 'package:test_appbar_animation/presentation/core/theme/text_style.dart';

abstract class BaseHandler {
  factory BaseHandler() => _BaseHandler();
  double marginHandler(SortType sort);
  Color colorHandler(SortType sort);
  Widget textWidgetHandler(SortType sort);
}

class _BaseHandler implements BaseHandler {
  @override
  double marginHandler(SortType sort) {
    if (sort.isColor == true) {
      if (sort.today.isEmpty) {
        return 7;
      }
      return 0;
    } else {
      return 12;
    }
  }

  @override
  Widget textWidgetHandler(SortType sort) {
    if (sort.today.contains("Today")) {
      return Text(
        sort.today,
        style: Style.headline3.copyWith(color: Colors.white38),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  @override
  Color colorHandler(SortType sort) {
    if (sort.color.contains("red")) {
      return Colors.red;
    } else {
      return Colors.blue;
    }
  }
}
