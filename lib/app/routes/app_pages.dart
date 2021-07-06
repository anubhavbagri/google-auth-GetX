import 'package:get/get.dart';

import 'package:signin_firebase_getx/app/modules/home/bindings/home_binding.dart';
import 'package:signin_firebase_getx/app/modules/home/bindings/login_binding.dart';
import 'package:signin_firebase_getx/app/modules/home/bindings/welcome_binding.dart';
import 'package:signin_firebase_getx/app/modules/home/views/home_view.dart';
import 'package:signin_firebase_getx/app/modules/home/views/login_view.dart';
import 'package:signin_firebase_getx/app/modules/home/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 500),
    ),
  ];
}
