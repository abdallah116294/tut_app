import 'package:flutter/material.dart';
import 'package:learn_clean_arch/presentation/resources/color_manager.dart';
import 'package:learn_clean_arch/presentation/resources/font_manger.dart';
import 'package:learn_clean_arch/presentation/resources/styles_manager.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.grey,
      body: Center(child: Text("Welcom to onboarding Screen",style:getRegularStyle(FontSize.s18, ColorManager.primary) ,),),
    );
  }
}