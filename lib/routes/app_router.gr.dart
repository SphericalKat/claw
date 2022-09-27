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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/cupertino.dart' as _i7;
import 'package:flutter/material.dart' as _i6;

import '../comments/ui/comments_page.dart' as _i4;
import '../home/ui/home_page.dart' as _i1;
import '../hottest/ui/hottest_page.dart' as _i2;
import '../newest/ui/newest_page.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    HottestPageRouter.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HottestPage(),
        title: 'Hottest posts',
      );
    },
    NewestPageRouter.name: (routeData) {
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.NewestPage(),
        title: 'Newest posts',
      );
    },
    HottestCommentsRouter.name: (routeData) {
      final args = routeData.argsAs<HottestCommentsRouterArgs>();
      return _i5.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i4.CommentsPage(
          key: args.key,
          commentsUrl: args.commentsUrl,
        ),
        title: 'Comments',
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          HomePageRoute.name,
          path: '/',
          children: [
            _i5.RouteConfig(
              HottestPageRouter.name,
              path: 'hottest',
              parent: HomePageRoute.name,
              children: [
                _i5.RouteConfig(
                  HottestCommentsRouter.name,
                  path: 'comments',
                  parent: HottestPageRouter.name,
                )
              ],
            ),
            _i5.RouteConfig(
              NewestPageRouter.name,
              path: 'newest',
              parent: HomePageRoute.name,
              children: [
                _i5.RouteConfig(
                  HottestCommentsRouter.name,
                  path: 'comments',
                  parent: NewestPageRouter.name,
                )
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i5.PageRouteInfo<void> {
  const HomePageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.HottestPage]
class HottestPageRouter extends _i5.PageRouteInfo<void> {
  const HottestPageRouter({List<_i5.PageRouteInfo>? children})
      : super(
          HottestPageRouter.name,
          path: 'hottest',
          initialChildren: children,
        );

  static const String name = 'HottestPageRouter';
}

/// generated route for
/// [_i3.NewestPage]
class NewestPageRouter extends _i5.PageRouteInfo<void> {
  const NewestPageRouter({List<_i5.PageRouteInfo>? children})
      : super(
          NewestPageRouter.name,
          path: 'newest',
          initialChildren: children,
        );

  static const String name = 'NewestPageRouter';
}

/// generated route for
/// [_i4.CommentsPage]
class HottestCommentsRouter
    extends _i5.PageRouteInfo<HottestCommentsRouterArgs> {
  HottestCommentsRouter({
    _i7.Key? key,
    required String commentsUrl,
  }) : super(
          HottestCommentsRouter.name,
          path: 'comments',
          args: HottestCommentsRouterArgs(
            key: key,
            commentsUrl: commentsUrl,
          ),
        );

  static const String name = 'HottestCommentsRouter';
}

class HottestCommentsRouterArgs {
  const HottestCommentsRouterArgs({
    this.key,
    required this.commentsUrl,
  });

  final _i7.Key? key;

  final String commentsUrl;

  @override
  String toString() {
    return 'HottestCommentsRouterArgs{key: $key, commentsUrl: $commentsUrl}';
  }
}
