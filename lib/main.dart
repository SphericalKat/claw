import 'package:claw/di/injection.dart';
import 'package:claw/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';

void main() async {
  await configureDependencies();
  runApp(ClawApp());
}

class ClawApp extends StatelessWidget {
  ClawApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Claw for lobste.rs',
      home: CupertinoApp.router(
        theme: const CupertinoThemeData(
          brightness: Brightness.dark,
          primaryColor: CupertinoColors.systemYellow,
        ),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
