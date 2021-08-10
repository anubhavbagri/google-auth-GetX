part of 'app_pages.dart';
// DO NOT EDIT. This is code generated via package:get_cli/get_cli.dart

abstract class Routes {
  Routes._();
  static const LOGIN = _Paths.LOGIN;
  static const HOME = _Paths.HOME;
  static const WELCOME = _Paths.WELCOME;
}

/// When we run the project, at that time there will be a home screen; it will check whether the user is authenticated or not; if the user is authenticated, then the user will move to the welcome screen where the user's profile is displayed; if the user is not authenticated, then from the home screen, the user will move to the login screen- where the user will make a login and after that the user will move to the welcome screen
abstract class _Paths {
  static const LOGIN = '/login';
  static const HOME = '/home';
  static const WELCOME = '/welcome';
}
