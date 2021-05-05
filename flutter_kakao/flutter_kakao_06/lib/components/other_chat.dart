import 'package:flutter_kakao/models/user.dart';
import 'package:flutter/material.dart';

class OtherChat extends StatelessWidget {
  const OtherChat({
    Key? key,
    required this.name,
    required this.text,
    required this.time,
  }) : super(key: key);

  final String name;
  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(friends[0].backgroundImage), // 1
          ),
          SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Container(
                  child: Text(text),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(time, style: TextStyle(fontSize: 12))
        ],
      ),
    );
  }
}
