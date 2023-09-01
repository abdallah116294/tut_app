import 'package:flutter/material.dart';
import 'package:learn_clean_arch/presentation/forget_password/forget_password_screen.dart';
import 'package:learn_clean_arch/presentation/login/login_screen.dart';
import 'package:learn_clean_arch/presentation/main/main_screen.dart';
import 'package:learn_clean_arch/presentation/onboarding/on_boarding_screen.dart';
import 'package:learn_clean_arch/presentation/register/register_screen.dart';
import 'package:learn_clean_arch/presentation/splash/splash_screen.dart';
import 'package:learn_clean_arch/presentation/store_details/store_details_screen.dart';

class Routes {
  static const String splashScreenRoute = "/";
  static const String loginScreenRoute = "/login";
  static const String registerScreenRoute = "/register";
  static const String onBoardingScreenRoute = "/onboarding";
  static const String forgetPasswordScreenRoute = "/forgetPassword";
  static const String mainScreenRoute = "/main";
  static const String storeDetailsScreenRoute = '/storeDetailsScreen';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashScreenRoute:
        return MaterialPageRoute(builder: (context)=>const SplashScreen());
      case Routes.loginScreenRoute:
        return MaterialPageRoute(builder: (context)=>const LoginScreen());
      case Routes.registerScreenRoute:
        return MaterialPageRoute(builder: (context)=>const RegisterScreen());  
      case Routes.onBoardingScreenRoute:
        return MaterialPageRoute(builder: (context)=>const OnBoardingScreen()); 
      case Routes.forgetPasswordScreenRoute:
        return MaterialPageRoute(builder: (context)=>const ForgetPasswordScreen());   
      case Routes.mainScreenRoute:
        return MaterialPageRoute(builder: (context)=>const MainSreen());  
      case Routes.storeDetailsScreenRoute:
        return MaterialPageRoute(builder: (context)=>const StoreDetailsScreen());  
    }
  }
}
