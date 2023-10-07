import 'package:get/get.dart';
import 'package:test_getx_controller/first_page/counter_controller.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterController>(() => CounterController());
  }
}
