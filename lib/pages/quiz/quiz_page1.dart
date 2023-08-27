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

class QuizPage extends StatelessWidget {
  ValuController vc = Get.put(ValuController());
  QuizPage({super.key});
  radioOption selectedValue = radioOption.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
          child: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Select One"),
            Radio(
                value: radioOption.a,
                groupValue: selectedValue,
                onChanged: (Value) {
                  selectedValue = radioOption.a;
                },),
            Radio(
                value: radioOption.b,
                groupValue: selectedValue,
                onChanged: (Value) {
                  selectedValue = radioOption.b;
                }),
            Text("HI, My total Point is : ${vc.result}"),
            TextButton(
              onPressed: () {
                Get.to(Quiz2Page());
              },
              child: Text("Next Page !"),
            ),
            TextButton(
              onPressed: () {
                vc.result++;
              },
              child: Text("Increase ++ !"),
            )
          ],
        ),
      )),
    );
  }
}
