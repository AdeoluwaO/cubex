import 'package:flutter/cupertino.dart';
import './route_exports.dart';

class AppRoutes {
  static const spalshscreen = 'splashscreen';
  static const onboardingScreen = 'onboarding_screen';
  static const login = 'login_screen';
  static const signup = 'signup_screen';
  static const profile = 'profile_screen';
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case spalshscreen:
        return trasnsitionRouter(screenWidget: const SplashScreen());
      case onboardingScreen:
        return trasnsitionRouter(screenWidget: const OnboardingScreen());
      case login:
        return trasnsitionRouter(screenWidget: const LoginScreen());
      case signup:
        return trasnsitionRouter(screenWidget: const SignupScreen());
      case profile:
        return trasnsitionRouter(screenWidget: const ProfileScreen());
      default:
        throw UnimplementedError('Route not found');
    }
  }
}

trasnsitionRouter({required Widget screenWidget}) {
  return CupertinoPageRoute(builder: (context) => screenWidget);
}
