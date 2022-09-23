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
        
        return CupertinoPageScaffold(
          child: child,
        );
      }),
    );
  }
}
