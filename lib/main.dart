import 'package:dempproject/routes/app_router.gr.dart';
import 'package:flutter/material.dart';

import 'injection_container.dart' as di;

Future<void> main() async {
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRoute = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "demo App",
      debugShowCheckedModeBanner: false,
      routeInformationParser: _appRoute.defaultRouteParser(),
      routerDelegate: _appRoute.delegate(),
    );
  }
}
