import 'package:demoapp/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Utilities {
  static const String mainsitename = "directsell.biz";
  static Future downloadquestion(String link) async {
    final url = Uri.http(mainsitename, link, {});
    // return "From Function";
    try {
      //http.get that work is download the data from internet or fetch the data from internet
      final response = await http.get(url);
      print("Response $response");
      //response.statusCode is response data is success fully downloaded this code is 200
      print("Status ${response.statusCode}");
      //response.body is data those write in json body
      print("Body ${response.body}");
      // convert string data in json.
      final jsonResponse = convert.jsonDecode(response.body);

      String bgcolor = jsonResponse["bgcolor"];
      //This switch case use by background color
      switch (bgcolor) {
        case "green":
          AppTheme.bgcolor = Colors.green;
          break;
        case "blue":
          AppTheme.bgcolor = Colors.blue;
          break;
        default:
          AppTheme.bgcolor = Colors.white;
          break;
      }

      String appbarbgcolor= jsonResponse["appbarbgcolor"];
      //This switch case use by Appbar background color

      switch (appbarbgcolor) {
        case "teal":
          AppTheme.appbarbgcolor=Colors.teal;
          break;
        case "blue":
          AppTheme.bgcolor = Colors.blue;
          break;
        default:
          AppTheme.bgcolor = Colors.white;
          break;
      }
      return "Kabootar";
    } catch (e) {
      print(e);
      return false;
    }


  }
}
