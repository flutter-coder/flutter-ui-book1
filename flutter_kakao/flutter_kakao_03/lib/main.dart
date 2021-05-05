import 'package:flutter_kakao/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: Colors.white,
          textTheme: TextTheme(
            headline6: TextStyle(color: Colors.black, fontSize: 24),
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
      home: MainScreen(),
    );
  }
}
