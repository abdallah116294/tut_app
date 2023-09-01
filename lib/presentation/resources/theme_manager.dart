import 'package:flutter/material.dart';
import 'package:learn_clean_arch/presentation/resources/color_manager.dart';
import 'package:learn_clean_arch/presentation/resources/font_manger.dart';
import 'package:learn_clean_arch/presentation/resources/styles_manager.dart';
import 'package:learn_clean_arch/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,
    //card view  theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),
    //appBar theme
    appBarTheme: AppBarTheme(
        color: ColorManager.primary,
        titleTextStyle: getRegularStyle(FontSize.s16, ColorManager.white),
        elevation: AppSize.s4,
        shadowColor: ColorManager.lightPrimary),

    // button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSize.s12)),
            textStyle: getRegularStyle(FontSize.s17, ColorManager.white))),
    //text theme
    textTheme: TextTheme(
        displayLarge: getLightStyle(FontSize.s14, ColorManager.darkGrey),
        displayMedium: getSemiBoldStyle(FontSize.s16, ColorManager.darkGrey),
        titleSmall: getMediumStyle(FontSize.s14, ColorManager.lightgrey),
        labelLarge: getRegularStyle(FontSize.s16, ColorManager.grey1),
        bodyLarge: getRegularStyle(FontSize.s16, ColorManager.grey)),
    //text form theme
    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        hintStyle: getRegularStyle(FontSize.s14, ColorManager.grey),
        labelStyle: getMediumStyle(FontSize.s14, ColorManager.darkGrey),
        errorStyle: getRegularStyle(FontSize.s16, ColorManager.error),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s8),
            borderSide:
                BorderSide(color: ColorManager.grey, width: AppSize.s1_5)),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s8),
          borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5)
        ),
        //disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(radius))
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s8),
          borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5)
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s8),
          borderSide: BorderSide(color: ColorManager.lightgrey,width: AppSize.s1_5)
        )
        ),

  );
}
