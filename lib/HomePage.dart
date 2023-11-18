import 'package:flutter/material.dart';

import 'UserHomePage.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoaderPage(title: 'Flutter Demo Home Page'),
    );
  }
}
