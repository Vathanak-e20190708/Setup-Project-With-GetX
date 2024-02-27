import 'package:get/get.dart';
import 'home_controller.dart';

class HomeViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeViewController(),
    );
  }
}
