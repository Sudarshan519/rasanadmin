import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rasanadmin/src/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'src/utils/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: CustomTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
