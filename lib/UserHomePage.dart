import 'package:demoapp/apptheme.dart';
import 'package:flutter/material.dart';

import 'Utilities.dart';

class LoaderPage extends StatefulWidget {
  const LoaderPage({super.key, required this.title});
  final String title;

  @override
  State<LoaderPage> createState() => _LoaderPageState();
}

class _LoaderPageState extends State<LoaderPage> {

  dynamic text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.appbarbgcolor,
        title:  Text(AppTheme.appname,style: TextStyle(color: AppTheme.textcolor), ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: AppTheme.bgcolor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(text),
              ],
            ),
            ElevatedButton(
                onPressed: () async {

                },
                child: Text("click"))
          ],
        ),
      ),
    );
  }
}

