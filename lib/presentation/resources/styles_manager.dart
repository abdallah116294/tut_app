import 'package:flutter/material.dart';
import 'package:learn_clean_arch/presentation/resources/font_manger.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontManager.fontFamily,
      color: color,
      fontWeight: fontWeight);
}

TextStyle getRegularStyle(double fontSize, Color color) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

TextStyle getMediumStyle(double fontSize, Color color) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}
TextStyle getLightStyle(double fontSize, Color color) {
  return _getTextStyle(fontSize, FontWeightManager.light, color);
}
TextStyle getSemiBoldStyle(double fontSize, Color color) {
  return _getTextStyle(fontSize, FontWeightManager.semiBold, color);
}
TextStyle getBoldStyle(double fontSize, Color color) {
  return _getTextStyle(fontSize, FontWeightManager.bold, color);
}
