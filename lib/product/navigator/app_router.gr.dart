// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    HomeDetailRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: HomeDetailView(
          key: args.key,
          url: args.url,
        ),
      );
    },
    DashBoardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const DashBoardView(),
      );
    },
    UserFullRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyPageRouter(),
      );
    },
    SettingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SettingView(),
      );
    },
    UserRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const UserView(),
      );
    },
    UserDetailRoute.name: (routeData) {
      final args = routeData.argsAs<UserDetailRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: UserDetailView(
          key: args.key,
          model: args.model,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: 'home',
        ),
        RouteConfig(
          HomeDetailRoute.name,
          path: 'detail',
        ),
        RouteConfig(
          DashBoardRoute.name,
          path: '/',
          children: [
            RouteConfig(
              UserFullRoute.name,
              path: 'UserFullRoute',
              parent: DashBoardRoute.name,
              children: [
                RouteConfig(
                  '#redirect',
                  path: '',
                  parent: UserFullRoute.name,
                  redirectTo: 'userView',
                  fullMatch: true,
                ),
                RouteConfig(
                  UserRoute.name,
                  path: 'userView',
                  parent: UserFullRoute.name,
                ),
                RouteConfig(
                  UserDetailRoute.name,
                  path: ':id',
                  parent: UserFullRoute.name,
                ),
              ],
            ),
            RouteConfig(
              SettingRoute.name,
              path: 'settings',
              parent: DashBoardRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: 'home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [HomeDetailView]
class HomeDetailRoute extends PageRouteInfo<HomeDetailRouteArgs> {
  HomeDetailRoute({
    Key? key,
    required String url,
  }) : super(
          HomeDetailRoute.name,
          path: 'detail',
          args: HomeDetailRouteArgs(
            key: key,
            url: url,
          ),
        );

  static const String name = 'HomeDetailRoute';
}

class HomeDetailRouteArgs {
  const HomeDetailRouteArgs({
    this.key,
    required this.url,
  });

  final Key? key;

  final String url;

  @override
  String toString() {
    return 'HomeDetailRouteArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [DashBoardView]
class DashBoardRoute extends PageRouteInfo<void> {
  const DashBoardRoute({List<PageRouteInfo>? children})
      : super(
          DashBoardRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';
}

/// generated route for
/// [EmptyPageRouter]
class UserFullRoute extends PageRouteInfo<void> {
  const UserFullRoute({List<PageRouteInfo>? children})
      : super(
          UserFullRoute.name,
          path: 'UserFullRoute',
          initialChildren: children,
        );

  static const String name = 'UserFullRoute';
}

/// generated route for
/// [SettingView]
class SettingRoute extends PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: 'settings',
        );

  static const String name = 'SettingRoute';
}

/// generated route for
/// [UserView]
class UserRoute extends PageRouteInfo<void> {
  const UserRoute()
      : super(
          UserRoute.name,
          path: 'userView',
        );

  static const String name = 'UserRoute';
}

/// generated route for
/// [UserDetailView]
class UserDetailRoute extends PageRouteInfo<UserDetailRouteArgs> {
  UserDetailRoute({
    Key? key,
    required UserModel model,
  }) : super(
          UserDetailRoute.name,
          path: ':id',
          args: UserDetailRouteArgs(
            key: key,
            model: model,
          ),
        );

  static const String name = 'UserDetailRoute';
}

class UserDetailRouteArgs {
  const UserDetailRouteArgs({
    this.key,
    required this.model,
  });

  final Key? key;

  final UserModel model;

  @override
  String toString() {
    return 'UserDetailRouteArgs{key: $key, model: $model}';
  }
}
