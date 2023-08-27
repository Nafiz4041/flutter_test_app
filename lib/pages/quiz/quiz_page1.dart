import 'package:flutter/material.dart';
import 'package:flutter_test_app/controllers/valuController.dart';
import 'package:flutter_test_app/pages/quiz/quiz2.dart';
import 'package:get/get.dart';

enum radioOption {
  none,
  a,
  b,
  c,
}

class QuizPage extends StatefulWidget {
  QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  ValuController vc = Get.put(ValuController());

  radioOption selectedValue = radioOption.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "What is 2+2 ?",
              style: TextStyle(fontSize: 24),
            ),
            RadioListTile(
              value: radioOption.a,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
              title: const Text("5"),
            ),
            RadioListTile(
              value: radioOption.b,
              groupValue: selectedValue, //b
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
              title: const Text("4"),
            ),
            RadioListTile(
              value: radioOption.c,
              groupValue: selectedValue, //b
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
              title: const Text("3"),
            ),
            TextButton(
              onPressed: () {
                if (selectedValue == radioOption.b) {
                  vc.marks += 10;
                }
                Get.off(Quiz2Page());
              },
              child: const Text("Submit!"),
            ),
          ],
        ),
      ),
    );
  }
}
