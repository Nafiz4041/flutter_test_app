import 'package:flutter/material.dart';
import 'package:flutter_test_app/pages/quiz/quiz_page1.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizPage(),
    );
  }
}
