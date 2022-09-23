import 'package:claw/routes/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:claw/di/injection.dart';

void main() {
  configureDependencies();
  runApp(ClawApp());
}

class ClawApp extends StatelessWidget {
  ClawApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Claw for lobste.rs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CupertinoApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
