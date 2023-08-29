import 'package:flutter/material.dart';
import 'package:flutter_test_app/controllers/valuController.dart';
//import 'package:flutter_test_app/pages/quiz/quiz3.dart';
import 'package:flutter_test_app/pages/quiz/quiz_page1.dart';
import 'package:get/get.dart';

import 'result_page.dart';

class Quiz2Page extends StatefulWidget {
  Quiz2Page({super.key});

  @override
  State<Quiz2Page> createState() => _Quiz2PageState();
}

enum radioOption {
  none,
  a,
  b,
  c,
}

class _Quiz2PageState extends State<Quiz2Page> {
  ValuController vc = Get.find();
  radioOption selectedValue = radioOption.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "7*8/4",
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
              title: const Text("14"),
            ),
            RadioListTile(
              value: radioOption.b,
              groupValue: selectedValue, //b
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
              title: const Text("12"),
            ),
            RadioListTile(
              value: radioOption.c,
              groupValue: selectedValue, //b
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
              title: const Text("15"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /*TextButton(
                    onPressed: () {
                      vc.marks.value = 0;
                      Get.off(QuizPage());
                    },
                    child: Text("Prev!")),*/
                ElevatedButton(
                  onPressed: () {
                    if (selectedValue == radioOption.a) {
                      vc.marks += 5;
                    }
                    Get.off(ResultPage());
                  },
                  child: const Text("Submit!"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
