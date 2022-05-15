import 'package:flutter/material.dart';
import 'package:test_appbar_animation/domain/models/week_sorter.dart';

abstract class BaseHandler {
  factory BaseHandler() => _BaseHandler();
  double marginHandler(SortType sort);
  Color colorHandler(SortType sort);
}

class _BaseHandler implements BaseHandler {
  @override
  double marginHandler(SortType sort) {
    if (sort.isColor == true) {
      return 0;
    } else if (sort.today!.contains("")) {
      return 10;
    } else {
      return 10;
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
