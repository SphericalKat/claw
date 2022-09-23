
import 'package:auto_route/auto_route.dart';
import 'package:claw/home/ui/home_page.dart';
import 'package:claw/hottest/ui/hottest_page.dart';
import 'package:claw/newest/ui/newest_page.dart';

@CupertinoAutoRouter(
  routes: [
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        CupertinoRoute(
          title: 'Hottest posts',
          path: 'hottest',
          name: 'HottestPageRouter',
          page: HottestPage,
        ),
        CupertinoRoute(
          title: 'Newest posts',
          path: 'newest',
          name: 'NewestPageRouter',
          page: NewestPage
        ),
      ],
    )
  ]
)

class $AppRouter {}