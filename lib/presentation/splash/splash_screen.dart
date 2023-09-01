import 'dart:async';
import 'package:flutter/material.dart';
import 'package:learn_clean_arch/presentation/resources/assets_manager.dart';
import 'package:learn_clean_arch/presentation/resources/color_manager.dart';
import 'package:learn_clean_arch/presentation/resources/routes_manager.dart';

import '../resources/constants_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;
  gotNext() {
    if (!mounted) {
      return;
    }
    Navigator.pushReplacementNamed(context, Routes.onBoardingScreenRoute);
  }

  stratDely() {
    _timer = Timer(const Duration(seconds: AppConstant.splashDeley), gotNext);
  }

  @override
  void initState() {
    super.initState();
    stratDely();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
    stratDely();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: const Center(
          child: Image(image: AssetImage(ImageAssets.splashImage))),
    );
  }
}
