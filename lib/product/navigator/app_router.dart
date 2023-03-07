import 'package:auto_route/auto_route.dart';
import 'package:autoroute/dashboard/dashboard_view.dart';
import 'package:autoroute/dashboard/settings/settings_view.dart';
import 'package:autoroute/dashboard/user/user_detail_view.dart';
import 'package:autoroute/dashboard/user/user_view.dart';
import 'package:autoroute/home/home_detail_view.dart';
import 'package:autoroute/home/home_view.dart';
import 'package:flutter/material.dart';

import '../../dashboard/user/model/user_model.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeView, path: 'home'),
    AutoRoute(page: HomeDetailView, path: 'detail'),
    AutoRoute(page: DashBoardView, initial: true, children: [
      AutoRoute(
        page: EmptyPageRouter,
        name: 'UserFullRoute',
        path: 'UserFullRoute',
        maintainState: true,
        children: [
          AutoRoute(initial: true, page: UserView, path: 'userView'),
          AutoRoute(page: UserDetailView, path: ':id'),
        ],
      ),
      AutoRoute(page: SettingView, path: 'settings'),
    ]),
  ],
)

// extend the generated private router
class AppRouter extends _$AppRouter {}

class EmptyPageRouter extends AutoRouter {
  const EmptyPageRouter({super.key});
}
 