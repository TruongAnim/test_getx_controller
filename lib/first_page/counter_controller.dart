import 'package:get/get.dart';
import 'package:logger/logger.dart';

class CounterController extends GetxController {
  Logger logger = Logger();
  int counter = 0;

  void printLog() {
    Logger().d(counter);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    logger.i("truong");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    logger.i("truong");
  }

  @override
  // TODO: implement onDelete
  InternalFinalCallback<void> get onDelete {
    logger.i("truong");
    counter = 0;
    return super.onDelete;
  }

  @override
  void onReady() {
    // TODO: implement onReady
    logger.i("truong");
    super.onReady();
  }
}
