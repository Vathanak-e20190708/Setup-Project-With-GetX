import 'package:get/get.dart';
import 'package:plant_shop_app/routes/app_paths.dart';
import 'package:plant_shop_app/views/cart/cart_binding.dart';
import 'package:plant_shop_app/views/cart/cart_view.dart';
import 'package:plant_shop_app/views/home/home_binding.dart';
import 'package:plant_shop_app/views/home/home_view.dart';
import 'package:plant_shop_app/views/onboard/onboard_view.dart';
import 'package:plant_shop_app/views/onboard/onboard_binding.dart';
import 'package:plant_shop_app/views/profile/profile_binding.dart';
import 'package:plant_shop_app/views/profile/profile_view.dart';
import 'package:plant_shop_app/views/splash/splash_binding.dart';
import 'package:plant_shop_app/views/splash/splash_view.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Paths.splash,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: Paths.onboard,
      page: () => OnboardView(),
      binding: OnboardBinding(),
    ),
    GetPage(
      name: Paths.homeview,
      page: () => HomeView(),
      binding: HomeViewBinding(),
    ),
    GetPage(
      name: Paths.cartview,
      page: () => CartView(),
      binding: CartViewBinding(),
    ),
    GetPage(
      name: Paths.profileview,
      page: () => ProfileView(),
      binding: ProfileViewBinding(),
    ),
  ];
}
