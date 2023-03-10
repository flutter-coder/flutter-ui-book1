import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  HomeBodyPopularItem({required this.id});

  @override
  Widget build(BuildContext context) {
    // 1. 인기아이템은 전체화면의 70%의 1/3만큼의 사이즈의 -5 의 크기를 가진다.
    double popularItemWidth = getBodyWidth(context) / 3 - 5;

    return Padding(
      padding: const EdgeInsets.only(bottom: gap_xl),
      child: Container(
        // 2. 화면이 줄어들 때 너무 작게 줄어드는 것을 방지하기 위해 최소 제약조건을 잡아준다.
        constraints: const BoxConstraints(
          minWidth: 320,
        ),
        child: SizedBox(
          width: popularItemWidth,
          child: Column(
            children: [
              _buildPopularItemImage(),
              _buildPopularItemStar(),
              _buildPopularItemComment(),
              _buildPopularItemUserInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset("assets/${popularList[id]}", fit: BoxFit.cover),
        ),
        const SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return const Column(
      children: [
        Row(
          children: [
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
            Icon(Icons.star, color: kAccentColor),
          ],
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          "깔끔하고 다 갖춰져있어서 좋았어요:) 위치도 완전 좋아용 다들 여기 살고싶다구ㅋㅋㅋㅋㅋ 화장실도 3개예요!!! 5명이서 씻는것도 전혀 불편함 없이 좋았어요^^ 이불도 포근하고 좋습니당ㅎㅎ",
          style: body1(),
          maxLines: 3,

          overflow: TextOverflow.ellipsis, // 3. 글자가 3 라인을 벗어나면 ... 처리된다.
        ),
        const SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage("assets/p1.jpeg"),
        ),
        const SizedBox(width: gap_s),
        Column(
          children: [
            Text(
              "데어",
              style: subtitle1(),
            ),
            const Text("한국"),
          ],
        )
      ],
    );
  }
}
