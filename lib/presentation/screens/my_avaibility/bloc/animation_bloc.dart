import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AnimationBloc extends ChangeNotifier {
  void isAnimating(
      ScrollController scrollController, AlignmentGeometry alignPosition) {
    scrollController.addListener(() {
      if (scrollController.offset <= 100 &&
          alignPosition == Alignment.bottomCenter) {
        alignPosition = Alignment.topCenter;
        notifyListeners();
      }

      switch (scrollController.position.userScrollDirection) {
        case ScrollDirection.forward:
          break;
        case ScrollDirection.reverse:
          alignPosition = Alignment.bottomCenter;
          notifyListeners();

          break;

        case ScrollDirection.idle:
          break;

        default:
      }
    });
  }
}
