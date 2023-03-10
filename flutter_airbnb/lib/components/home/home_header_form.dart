import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/common/common_form_field.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeHeaderForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; // 추가
    return Padding(
      padding: const EdgeInsets.only(top: gap_m), // 1. AppBar와 거리주기
      // 2. 정렬 위젯
      child: Align(
        // 3. -1.0 부터 1.0 까지 가로 범위에서 0.1의 값은 5%이다.
        alignment:
            screenWidth < 520 ? const Alignment(0, 0) : const Alignment(-0.6, 0), // 변경
        child: Container(
          width: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(gap_l), // 4. Form 내부 여백
              child: Column(
                children: [
                  _buildFormTitle(), // 5. Form 위젯 제목 영역
                  _buildFormField(), // 6. Form 위젯 Text 입력 양식 영역
                  _buildFormSubmit(), // 7. Form 위젯 전송 버튼 영역
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return Column(
      children: [
        Text(
          "모두의숙소에서 숙소를 검색하세요.",
          style: h4(),
        ),
        const SizedBox(height: gap_xs),
        Text(
          "혼자하는 여행에 적합한 개인실부터 여럿이 함께하는 여행에 좋은 '공간전체' 숙소까지, 모두의숙소에 다 있습니다.",
          style: body1(),
        ),
        const SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildFormField() {
    return const Column(
      children: [
        CommonFormField(
          prefixText: "위치",
          hintText: "근처 추천 장소",
        ),
        SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
                child: CommonFormField(
              prefixText: "체크인",
              hintText: "날짜 입력",
            )),
            Expanded(
                child: CommonFormField(
              prefixText: "체크 아웃",
              hintText: "날짜 입력",
            )),
          ],
        ),
        SizedBox(height: gap_s),
        Row(
          children: [
            Expanded(
                child: CommonFormField(
              prefixText: "성인",
              hintText: "2",
            )),
            Expanded(
                child: CommonFormField(
              prefixText: "어린이",
              hintText: "0",
            )),
          ],
        ),
        SizedBox(height: gap_m),
      ],
    );
  }

  Widget _buildFormSubmit() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: kAccentColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: () {
          print("서브밋 클릭됨");
        },
        child: Text(
          "검색",
          style: subtitle1(mColor: Colors.white),
        ),
      ),
    );
  }
}
