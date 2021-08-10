import 'package:get/get.dart';
import 'package:signin_firebase_getx/controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());
  }
}
