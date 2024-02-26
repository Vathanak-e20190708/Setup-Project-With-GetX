import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:plant_shop_app/routes/app_paths.dart';
import 'package:plant_shop_app/views/onboard/onboard_view.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedSplashScreen(
          splash: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  height: 150,
                  width: 150,
                  image: AssetImage(
                    'assets/images/logo.png',
                  ),
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
          nextScreen: OnboardView(),
          nextRoute: Paths.onboard,
          splashIconSize: 150,
          duration: 3000,
        ),
      ],
    );
  }
}
