import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_clean_arch/presentation/resources/assets_manager.dart';
import 'package:learn_clean_arch/presentation/resources/color_manager.dart';
import 'package:learn_clean_arch/presentation/resources/font_manger.dart';
import 'package:learn_clean_arch/presentation/resources/strings_manager.dart';
import 'package:learn_clean_arch/presentation/resources/styles_manager.dart';
import 'package:learn_clean_arch/presentation/resources/values_manager.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageViewController = PageController();
  int currentPage = 0;
  late final List<SliderObject> _list = _getSliderData();
  List<SliderObject> _getSliderData() => [
        SliderObject(AppStringManager.onBoardingTitle1,
            AppStringManager.onBoardingSubtilte1, ImageAssets.onBoardingImage1),
        SliderObject(AppStringManager.onBoardingTitle2,
            AppStringManager.onBoardingSubtitle2, ImageAssets.onBoardingImage2),
        SliderObject(AppStringManager.onBoardingTitle3,
            AppStringManager.onBoardingSubTitle3, ImageAssets.onBoardingImage3),
        SliderObject(AppStringManager.onBoardingTitle4,
            AppStringManager.onBoardingSubTitle4, ImageAssets.onBoardingImage4),
      ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.white,
        appBar: AppBar(
          backgroundColor: ColorManager.white,
          elevation: AppSize.s0,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: ColorManager.white,
              statusBarBrightness: Brightness.dark),
        ),
        body: PageView.builder(
          controller: _pageViewController,
          itemCount: _list.length,
          onPageChanged: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          itemBuilder: (context, index) {
            //return onboarding page
          },
        ));
  }
}

class OnBoardingPage extends StatelessWidget {
  final SliderObject sliderObject;
  const OnBoardingPage({super.key,required this.sliderObject});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        
      ],
    );
  }
}

class SliderObject {
  String title;
  String subTitle;
  String imagePath;
  SliderObject(this.title, this.subTitle, this.imagePath);
}
