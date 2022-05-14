import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:test_appbar_animation/domain/models/week_sorter.dart';
import 'package:test_appbar_animation/presentation/core/theme/text_style.dart';
import 'package:test_appbar_animation/presentation/core/theme/theme.dart';
import 'package:test_appbar_animation/presentation/widgets/card_helper.dart';

part 'production_section.dart';
part 'profile_section.dart';
part 'week_selector.dart';
part 'stack_list_widget.dart';

class MyAvaibility extends StatefulWidget {
  const MyAvaibility({Key? key}) : super(key: key);

  @override
  State<MyAvaibility> createState() => _MyAvaibilityState();
}

class _MyAvaibilityState extends State<MyAvaibility>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;

  AlignmentGeometry alignPosition = Alignment.topCenter;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(
      () {
        if (_scrollController.offset <= 100 &&
            alignPosition == Alignment.bottomCenter) {
          setState(
            () {
              alignPosition = Alignment.topCenter;
            },
          );
        }
        switch (_scrollController.position.userScrollDirection) {
          case ScrollDirection.forward:
            break;
          case ScrollDirection.reverse:
            setState(() {
              alignPosition = Alignment.bottomCenter;
            });
            break;
          case ScrollDirection.idle:
            break;
          default:
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(200, 255, 255, 255),
        elevation: 0,
        centerTitle: false,
        title: const Text("My Availibilty", style: Style.headline1),
      ),
      body: _StackListWidget(
        scrollController: _scrollController,
        position: alignPosition,
      ),
    );
  }
}
