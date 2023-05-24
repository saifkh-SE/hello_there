import 'package:get/get.dart';
import 'package:hello_there/GetX/controller/getx_controller.dart';

/// A [Bindings] implementation for setting up dependencies with GetX.
class GetXBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetXController>(
      () => GetXController(),
    );
  }
}
