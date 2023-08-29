import 'package:flutter/material.dart';

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
    return const Scaffold();
  }
}


