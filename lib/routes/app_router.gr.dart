// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../home/ui/home_page.dart' as _i1;
import '../hottest/ui/hottest_page.dart' as _i2;
import '../newest/ui/newest_page.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    HottestPageRouter.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HottestPage(),
        title: 'Hottest posts',
      );
    },
    NewestPageRouter.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.NewestPage(),
        title: 'Newest posts',
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          HomePageRoute.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              HottestPageRouter.name,
              path: 'hottest',
              parent: HomePageRoute.name,
            ),
            _i4.RouteConfig(
              NewestPageRouter.name,
              path: 'newest',
              parent: HomePageRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i4.PageRouteInfo<void> {
  const HomePageRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.HottestPage]
class HottestPageRouter extends _i4.PageRouteInfo<void> {
  const HottestPageRouter()
      : super(
          HottestPageRouter.name,
          path: 'hottest',
        );

  static const String name = 'HottestPageRouter';
}

/// generated route for
/// [_i3.NewestPage]
class NewestPageRouter extends _i4.PageRouteInfo<void> {
  const NewestPageRouter()
      : super(
          NewestPageRouter.name,
          path: 'newest',
        );

  static const String name = 'NewestPageRouter';
}
