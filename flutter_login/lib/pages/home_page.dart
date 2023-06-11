import 'package:flutter/material.dart';
import 'package:flutter_login/components/logo.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 200),
            const Logo("Care Soft"),
            const SizedBox(height: 50),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // 1. 화면 스택 제거
              },
              child: const Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}
