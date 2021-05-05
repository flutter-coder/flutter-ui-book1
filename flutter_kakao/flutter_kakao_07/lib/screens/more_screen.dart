import 'package:flutter_kakao/models/tap.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("더보기")),
      body: Column(
        children: [
          SizedBox(height: 30),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4, // 1
              children: List.generate(
                taps.length,
                (index) => Column(
                  children: [
                    Icon(taps[index].icon),
                    SizedBox(height: 5),
                    Text(taps[index].text),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
