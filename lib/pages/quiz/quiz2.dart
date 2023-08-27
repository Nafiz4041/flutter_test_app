import 'package:flutter/material.dart';
import 'package:flutter_test_app/controllers/valuController.dart';
import 'package:get/get.dart';

class Quiz2Page extends StatelessWidget {
  ValuController vc = Get.find();
  Quiz2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
          child: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text("HI, My total Point is : ${vc.result}"),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Next Page !"),
            )
          ],
        ),
      )),
    );
  }
}
