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
        title: Text(
          AppText.appname,
          style: TextStyle(color: AppTheme.textcolor),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: AppTheme.bgcolor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Image Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(75),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 10,
                            spreadRadius: 1.0,
                          ),
                          BoxShadow(
                            color: Colors.transparent,
                            offset: Offset(-2.0, -2.0),
                            blurRadius: 10,
                            spreadRadius: 1.0,
                          ),
                        ]),
                    child: Center(
                        child: SizedBox(
                            height: 100,
                            child: Image.network(
                                'https://cdn.pixabay.com/photo/2013/07/12/15/56/tic-tac-toe-150614_1280.png'))),
                  ),
                ],
              ),
              //Intro Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    child:  Text(
                      AppText.intro,
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.intro),
                    ),
                  )
                ],
              ),
              //Menu Button Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        primary: AppTheme.menubgbutton,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text("Menu"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
