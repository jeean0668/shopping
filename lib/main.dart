import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
    );
  }
}
