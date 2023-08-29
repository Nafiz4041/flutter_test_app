/*import 'package:flutter/material.dart';
import 'package:flutter_test_app/controllers/valuController.dart';
import 'package:flutter_test_app/pages/quiz/result_page.dart';
import 'package:get/get.dart';

class Quiz3Page extends StatefulWidget {
  const Quiz3Page({super.key});

  @override
  State<Quiz3Page> createState() => _Quiz3PageState();
}

enum radioOption {
  none,
  a,
  b,
  c,
}

class _Quiz3PageState extends State<Quiz3Page> {
  ValuController vc = Get.find();
  radioOption selectedValue = radioOption.none;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "What is 18/3 ?",
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
              title: const Text("7"),
            ),
            RadioListTile(
              value: radioOption.c,
              groupValue: selectedValue, //b
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
              title: const Text("6"),
            ),
            TextButton(
              onPressed: () {
                if (selectedValue == radioOption.c) {
                  vc.marks += 10;
                }
                Get.off(ResultPage());
              },
              child: const Text("Submit!"),
            ),
          ],
        ),
      ),
    );
  }
}
