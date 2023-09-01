import 'package:flutter/material.dart';
import 'package:learn_clean_arch/presentation/color_manager.dart';
import 'package:learn_clean_arch/presentation/font_manger.dart';
import 'package:learn_clean_arch/presentation/styles_manager.dart';
import 'package:learn_clean_arch/presentation/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,
    //card view  theme 
    cardTheme: CardTheme(color: ColorManager.white,shadowColor: ColorManager.grey,elevation:AppSize.s4,),
    //appBar theme
    appBarTheme: AppBarTheme(
      color: ColorManager.primary,
      titleTextStyle: getSemiBoldStyle(FontSize.s16,ColorManager.white))
     
    // button theme
    //text theme
    //text form theme
  );
}
