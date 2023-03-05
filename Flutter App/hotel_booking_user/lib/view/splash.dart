import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking_user/view/auth/authpage.dart';
import 'package:hotel_booking_user/view/home.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'image/Logo/logo.png',
      nextScreen: AuthPage(),
      splashTransition: SplashTransition.decoratedBoxTransition,
      splashIconSize: MediaQuery.of(context).size.width * 0.5,
      duration: 5000,
      animationDuration: Duration(seconds: 3),
    );
  }
}
