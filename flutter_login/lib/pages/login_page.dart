import 'package:flutter/material.dart';
import 'package:flutter_login/components/custom_form.dart';
import 'package:flutter_login/components/logo.dart';
import 'package:flutter_login/size.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: xlarge_gap),
            Logo("Login"),
            SizedBox(height: large_gap), // 1. 추가
            CustomForm(), // 2. 추가
          ],
        ),
      ),
    );
  }
}
