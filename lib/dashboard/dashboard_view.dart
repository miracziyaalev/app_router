import 'package:auto_route/auto_route.dart';
import 'package:autoroute/product/navigator/app_router.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        UserFullRoute(),
        SettingRoute(),
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: context.tabsRouter.activeIndex,
              onTap: context.tabsRouter.setActiveIndex,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.person), label: UserRoute.name),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: SettingRoute.name),
              ]),
        );
      },
    );
  }
}
