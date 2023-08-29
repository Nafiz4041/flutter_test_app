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
  final _textC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber.shade300,
                  border: Border.all(color: Colors.black),
                ),
                child: TextField(
                  controller: _textC,
                  decoration: InputDecoration(
                      hintText: 'insert your id', border: InputBorder.none),
                ),
              ),
              const Text(
                "7*8/2 ?",
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
                title: const Text("28"),
              ),
              RadioListTile(
                value: radioOption.b,
                groupValue: selectedValue, //b
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;
                  });
                },
                title: const Text("29"),
              ),
              RadioListTile(
                value: radioOption.c,
                groupValue: selectedValue, //b
                onChanged: (value) {
                  setState(() {
                    selectedValue = value!;
                  });
                },
                title: const Text("26"),
              ),
              ElevatedButton(
                onPressed: () {
                  if (selectedValue == radioOption.a) {
                    vc.marks += 5;
                  }
                  vc.id.value = _textC.text;
                  Get.off(Quiz2Page());
                },
                child: const Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
