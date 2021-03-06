import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getwidget/getwidget.dart';

import 'package:test_appbar_animation/domain/models/week_sorter.dart';
import 'package:test_appbar_animation/presentation/core/helpers/image_path.dart';
import 'package:test_appbar_animation/presentation/core/theme/text_style.dart';
import 'package:test_appbar_animation/presentation/core/theme/theme.dart';
import 'package:test_appbar_animation/presentation/mappers/color_height_mapper.dart';
import 'package:test_appbar_animation/presentation/widgets/card_helper.dart';
import 'package:test_appbar_animation/presentation/widgets/colorful_container.dart';
import 'package:test_appbar_animation/presentation/widgets/produntion_card_helper.dart';

part 'production_section.dart';
part 'profile_section.dart';
part 'week_selector.dart';
part 'stack_list_widget.dart';
part "mini_scrol_item.dart";
part 'job_offer.dart';

//! usully i inject from service locator (ex get_it)
final _mapper = BaseHandler();

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
      appBar: PreferredSize(
        child: ClipRRect(
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                  child: const Text("My Avaibility",
                      style: Style.headline1, textAlign: TextAlign.center),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white.withAlpha(200),
                ))),
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
      ),
      body: _StackListWidget(
        scrollController: _scrollController,
        position: alignPosition,
      ),
    );
  }
}
