import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'Utilities.dart';

void main() async {
  try {
    String text;
    text = await Utilities.downloadquestion("/superapp/data.json");
  } catch (ex) {}
  runApp(const StartPage());
}
