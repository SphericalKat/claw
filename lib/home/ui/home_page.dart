import 'package:claw/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HottestPageRouter(),
        NewestPageRouter(),
      ],
      builder: ((context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);

        return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.flame),
                label: 'Hottest',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.exclamationmark_bubble),
                label: 'Newest',
              ),
            ],
          ),
          tabBuilder: (context, index) => CupertinoPageScaffold(child: child),
        );
      }),
    );
  }
}
