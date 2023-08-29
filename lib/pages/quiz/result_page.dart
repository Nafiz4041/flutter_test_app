import 'package:flutter/material.dart';
import 'package:flutter_test_app/controllers/valuController.dart';
import 'package:flutter_test_app/pages/quiz/quiz_page1.dart';
import 'package:get/get.dart';

class ResultPage extends StatelessWidget {
  ValuController vc = Get.find();
  ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result page"),
      ),
      body: Obx(() => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("${vc.id.value}"),
                Text("You get  : ${vc.marks} out of 10"),
                TextButton(
                    onPressed: () {
                      vc.marks.value = 0;
                      Get.off(QuizPage());
                    },
                    child: Text("Home Page"))
              ],
            ),
          )),
    );
  }
}
