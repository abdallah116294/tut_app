import 'package:flutter/material.dart';
import 'package:learn_clean_arch/presentation/resources/routes_manager.dart';
import 'package:learn_clean_arch/presentation/resources/theme_manager.dart';

import '../presentation/splash/splash_screen.dart';
class MyApp extends StatefulWidget {
  MyApp._internal(); //name Constractor to make a single instance
  static final MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      home:const  SplashScreen()
    );
  }
}


