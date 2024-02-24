import 'package:get/get.dart';
import 'package:plant_shop_app/views/splash_screen/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SplashScreenController(),
    );
  }
}