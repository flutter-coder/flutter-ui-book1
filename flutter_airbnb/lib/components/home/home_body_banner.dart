import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeBodyBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      // 1. 상단에 마진을 준다.
      padding: const EdgeInsets.only(top: gap_m),
      // 2 이미지와 글자를 겹치게 하기 위해서 Stack 위젯을 사용한다.
      child: Stack(
        children: [
          _buildBannerImage(),
          _buildBannerCaption(),
        ],
      ),
    );
  }

  Widget _buildBannerImage() {
    return ClipRRect(
      // 3. 이미지 모서리 둥글게
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        "assets/banner.jpg",
        fit: BoxFit.cover,
        width: double.infinity,
        height: 320,
      ),
    );
  }

  Widget _buildBannerCaption() {
    return Positioned(
      // 4. Stack 위젯 내부에 위치 설정을 위해
      top: 40,
      left: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: const BoxConstraints(
              // 5. 글자 범위 최대 제약 조건 주기
              maxWidth: 250,
            ),
            child: Text(
              "이제, 여행은 가까운 곳에서",
              style: h4(mColor: Colors.white),
            ),
          ),
          const SizedBox(height: gap_m),
          Container(
            constraints: const BoxConstraints(
              maxWidth: 250,
            ),
            child: Text(
              "새로운 공간에 머물러 보세요. 살아보기, 출장, 여행 등 다양한 목적에 맞는 숙소를 찾아보세요.",
              style: subtitle1(mColor: Colors.white),
            ),
          ),
          const SizedBox(height: gap_m),
          SizedBox(
            height: 35,
            width: 170,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {},
              child: Text(
                "가까운 여행지 둘러보기",
                style: subtitle2(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
