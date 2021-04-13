import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:rasanadmin/src/pages/home.dart';

import 'src/utils/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: CustomTheme.lightTheme,
      home: AllOrders(),
    );
  }
}
