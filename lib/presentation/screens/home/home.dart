import 'package:flutter/cupertino.dart';

import 'package:test_appbar_animation/presentation/core/theme/theme.dart';
import 'package:test_appbar_animation/presentation/screens/my_avaibility/ui/main_scr_of_avaibility.dart';
import 'package:test_appbar_animation/presentation/screens/second/second.dart';
import 'package:test_appbar_animation/presentation/screens/third/third.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            height: 60,
            backgroundColor: AppColors.cardDark,
            activeColor: AppColors.accent,
            iconSize: 25,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.flame_fill),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.globe),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.star_fill),
              ),
            ]),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (context) => const MyAvaibility(),
              );

            case 1:
              return CupertinoTabView(
                builder: (context) => const SecondPage(),
              );
            case 2:
              return CupertinoTabView(
                builder: (context) => const ThirdPage(),
              );

            default:
              return Container(
                color: AppColors.accent,
              );
          }
        });
  }
}
