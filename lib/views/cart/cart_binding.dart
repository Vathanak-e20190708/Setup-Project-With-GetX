import 'package:get/get.dart';
import 'cart_controller.dart';

class CartViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => CartViewController(),
    );
  }
}
