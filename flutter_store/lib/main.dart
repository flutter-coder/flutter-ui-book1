import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
    );
  }
}

// stl 이라고 적으면 자동완성 기능이 활성화 된다.
class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // const는 변하지 않는 위젯 앞에 붙일 수 있다. const를 이용해 해당 위젯은 변하지 않음을 알려주면 중복된 위젯을 다시 그리지 않아 앱의 속도가 개선된다.
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Text("Woman", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("Kids", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("Shoes", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("Bag", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(child: Image.asset("assets/bag.jpeg", fit: BoxFit.cover)),
            const SizedBox(height: 2),
            Expanded(child: Image.asset("assets/cloth.jpeg", fit: BoxFit.cover)),
          ],
        ),
      ),
    );
  }
}
