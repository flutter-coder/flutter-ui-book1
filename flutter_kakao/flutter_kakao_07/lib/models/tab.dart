import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tab {
  final IconData icon;
  final String text;

  Tab({
    required this.icon,
    required this.text,
  });
}

List<Tab> tabs = [
  Tab(icon: FontAwesomeIcons.envelope, text: "메일"),
  Tab(icon: FontAwesomeIcons.calendarAlt, text: "캘린더"),
  Tab(icon: FontAwesomeIcons.archive, text: "서랍"),
  Tab(icon: FontAwesomeIcons.gift, text: "선물하기"),
  Tab(icon: FontAwesomeIcons.laugh, text: "이모티콘"),
  Tab(icon: FontAwesomeIcons.shopify, text: "쇼핑하기"),
  Tab(icon: FontAwesomeIcons.tshirt, text: "스타일"),
];
