import 'package:get/get.dart';
import 'package:signin_firebase_getx/controllers/welcome_controller.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<WelcomeController>(WelcomeController());
  }
}
