import 'package:get/get.dart';
import 'package:plant_shop_app/views/home/home_controller.dart';

class HomeViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeViewController(),
    );
  }
}
