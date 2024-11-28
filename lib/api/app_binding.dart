import 'package:formation_odc/api/controllers/user_controller.dart';
import 'package:get/get.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(UserController());
  }
}
