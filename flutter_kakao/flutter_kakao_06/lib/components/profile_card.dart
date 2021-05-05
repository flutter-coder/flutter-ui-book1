import 'package:flutter_kakao/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kakao/screens/profile_screen.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfileScreen(user: me), // 1
            ),
          );
        },
        child: ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              user.backgroundImage,
            ),
          ),
          title: Text(
            user.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          subtitle: Text(
            user.intro,
            style: TextStyle(fontSize: 12),
          ),
          contentPadding: const EdgeInsets.all(0),
        ),
      ),
    );
  }
}
