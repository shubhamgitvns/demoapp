import 'package:demoapp/UserHomePage.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static Color bgcolor = Colors.yellow;
  static Color textcolor = Colors.black;
  static Color appbarbgcolor = Colors.white;
  static Color menubgbutton = Colors.black;
  static Color intro = Colors.white;
}

class AppText {
  static String appname = "App name";
  static String intro = "Intro";
}

class Appimg {
  static String img =
      "https://cdn.pixabay.com/photo/2013/07/12/15/56/tic-tac-toe-150614_1280.png";
}

class AppPage {
  static Widget homepage = SecondPage();
}
