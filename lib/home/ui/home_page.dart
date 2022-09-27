import 'package:claw/comments/cubit/comments_cubit.dart';
import 'package:claw/di/injection.dart';
import 'package:claw/hottest/cubit/hottest_cubit.dart';
import 'package:claw/newest/cubit/newest_cubit.dart';
import 'package:claw/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          tabBuilder: (context, index) => MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<HottestCubit>(),
              ),
              BlocProvider(
                create: (context) => getIt<NewestCubit>(),
              ),
              BlocProvider(
                create: (context) => getIt<CommentsCubit>(),
              ),
            ],
            child: CupertinoPageScaffold(child: child),
          ),
        );
      }),
    );
  }
}
