import 'package:edu/Screens/MainScreen/main_screen.dart';
import 'package:edu/app_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor: whiteColor,
    systemNavigationBarDividerColor: whiteColor,
  ));

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      title: 'Edu',
      theme: ThemeData(
          primaryColor: primaryColor, scaffoldBackgroundColor: backgroundColor),
      // home: MainScreen(),
    );
  }
}
