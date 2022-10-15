import 'package:get/get.dart';
import 'package:rescpitalitask/controllers/cart_controller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartController>(() => CartController(), fenix: true);
  }
}
