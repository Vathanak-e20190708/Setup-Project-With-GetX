import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:plant_shop_app/routes/app_paths.dart';
import 'package:plant_shop_app/views/home/home_view.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedSplashScreen(
          splash: const Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                    'assets/images/plant.png',
                  ),
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
          nextScreen: const HomeView(),
          nextRoute: Paths.home,
          splashIconSize: 300,
          duration: 8000,
        ),
      ],
    );
  }
}
