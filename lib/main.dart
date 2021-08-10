import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_firebase_getx/routes/app_pages.dart';

import 'bindings/home_binding.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //https://stackoverflow.com/questions/63873338/what-does-widgetsflutterbinding-ensureinitialized-do/63873689
  await Firebase.initializeApp();
  HomeBinding().dependencies();
  runApp(
    GetMaterialApp(
      title: "Google Sign In Using GetX",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
        accentColor: Colors.yellow,
        primaryColor: Color(0xFF141A31),
        primaryColorDark: Color(0xFF081029),
        scaffoldBackgroundColor: Color(0xFF141A31),
        textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.yellow),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.yellow),
              padding: MaterialStateProperty.all(EdgeInsets.all(14))),
        ),
      ),
    ),
  );
}
