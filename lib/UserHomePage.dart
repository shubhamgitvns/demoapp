

import 'package:flutter/material.dart';

import 'Utilities.dart';


class LoaderPage extends StatefulWidget {
  const LoaderPage({super.key, required this.title});
  final String title;

  @override
  State<LoaderPage> createState() => _LoaderPageState();
}

class _LoaderPageState extends State<LoaderPage> {
  //List<Data> data = [];
  dynamic text = "";
String name="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.greenAccent,
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
                 // text = "Count ${_counter}";
                  text = await Utilities.downloadquestion("/superapp/data.json");
                  if (text is bool)
                    text="Error";
                  else
                    text=text.toString();

                  setState(() {});
                },
                child: Text("click"))
          ],
        ),
      ),
    );
  }
}

class Data{
  String name="";

  //*****Create the constructor******
  Data(this.name);

  @override
  String toString() {
    return 'Data{name: $name}';
  }
}
