import 'package:get/get.dart';
import 'profile_controller.dart';

class ProfileViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ProfileViewController(),
    );
  }
}
