import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:signin_firebase_getx/app/routes/app_pages.dart';

class HomeController extends GetxController {
  late GoogleSignIn googleSignIn;
  var isSignIn = false.obs;
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    googleSignIn = GoogleSignIn();
    ever(isSignIn,
        handleAuthStateChanged); //whenever value of isSignIn will change, at that time, the method handleAuthStateChanged will be called.
    isSignIn.value = await firebaseAuth.currentUser !=
        null; //Accordingly, isSignIn will contain true or false.
    firebaseAuth.authStateChanges().listen((event) {
      isSignIn.value = event != null;

      ///event will contain the firebase user so accordingly, it'll check the condition and assign the value as true or false to isSignIn variable.
    });
    super.onReady();
  }

  @override
  void onClose() {}

  void handleAuthStateChanged(isLoggedIn) {
    if (isLoggedIn) {
      Get.offAllNamed(Routes.WELCOME, arguments: firebaseAuth.currentUser);
    } else {
      Get.offAllNamed(Routes.LOGIN);
    }
  }
}
