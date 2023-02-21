class Chat {
  final String image;
  final String title;
  final String content;
  final String time;
  final String count;

  Chat(
      {required this.image,
      required this.title,
      required this.content,
      required this.time,
      required this.count});
}

final String _urlPrefix =
    "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger";

List<Chat> chats = [
  Chat(
    image: "${_urlPrefix}_man_1.jpg",
    title: "홍길동",
    content: "오늘 저녁에 시간 되시나요?",
    time: "오후 11:00",
    count: "0",
  ),
  Chat(
    image: "${_urlPrefix}_woman_1.jpg",
    title: "정도전",
    content: "오늘 날씨가 참 맑네요.",
    time: "오전 09:30",
    count: "1",
  ),
];
