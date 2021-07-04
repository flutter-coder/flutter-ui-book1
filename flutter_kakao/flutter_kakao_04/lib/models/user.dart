class User {
  final String backgroundImage;
  final String name;
  final String intro;

  User({
    required this.backgroundImage,
    required this.name,
    required this.intro,
  });
}

final String _urlPrefix =
    "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger";

User me = User(
  backgroundImage: "${_urlPrefix}_me.jpg",
  name: "김철수",
  intro: "고통없이는 얻는 것도 없다.",
);

List<User> friends = [
  User(
    backgroundImage: "${_urlPrefix}_man_1.jpg",
    name: "홍길동",
    intro: "아버지라 불러도 되겠습니까",
  ),
  User(
    backgroundImage: "${_urlPrefix}_woman_1.jpg",
    name: "정도전",
    intro: "앞이 보이겠습니까",
  ),
  User(
    backgroundImage: "${_urlPrefix}_man_2.jpg",
    name: "박태수",
    intro: "지금 어디에 와 있을까",
  ),
  User(
    backgroundImage: "${_urlPrefix}_woman_2.jpg",
    name: "김상중",
    intro: "그런데 말입니다.",
  ),
  User(
    backgroundImage: "${_urlPrefix}_man_3.jpg",
    name: "김두한",
    intro: "4딸라",
  ),
  User(
    backgroundImage: "${_urlPrefix}_woman_3.jpg",
    name: "심영",
    intro: "내가 고자라니",
  ),
  User(
    backgroundImage: "${_urlPrefix}_man_4.jpg",
    name: "교강용",
    intro: "더 이상의 자세한 설명은 생략한다.",
  ),
  User(
    backgroundImage: "${_urlPrefix}_woman_4.jpg",
    name: "김환희",
    intro: "뭣이 중헌디",
  ),
  User(
    backgroundImage: "${_urlPrefix}_man_5.jpg",
    name: "뚱이",
    intro: "아뇨, 뚱인데요?",
  ),
  User(
    backgroundImage: "${_urlPrefix}_woman_5.jpg",
    name: "김주원",
    intro: "이게 최선입니까 확실해요?",
  ),
];
