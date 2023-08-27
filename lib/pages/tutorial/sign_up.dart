import 'package:flutter/material.dart';
import 'package:flutter_test_app/pages/tutorial/home_page.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('hi i am nafiz'),
            Text('hi i am nafiz'),
            TextField(
              decoration: InputDecoration(hintText: 'username'),
            ),
            TextField(
              decoration: InputDecoration(hintText: "password"),
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    Get.to(() => HomePage());
                  },
                  child: Text('Foegot Pass')),
            ),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: const Color.fromARGB(255, 194, 60, 60)),
                onPressed: () {
                  print('Login cliked');
                },
                child: Text('Log In'),
              ),
            ),
            Center(child: Text('Or sign in with sex')),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                ),
                onPressed: () {
                  print('facebook is clicked');
                },
                child: Image.asset(
                  'aseets/image/facebook_2626269.png',
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            // Text('Log in with google'))
          ],
        ),
      ),
    );
  }
}
