import 'package:demoapp/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Utilities {
  static const String mainsitename = "directsell.biz";

  static Color getColorFromString(String theamcolor) {
    switch (theamcolor) {
      case "blue":
        return Colors.blue;
      case "green":
        return Colors.green;
      case "teal":
        return Colors.teal;
      default:
        return Colors.white;
    }
  }

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
      //calling getColorFromString function()
      AppTheme.bgcolor = getColorFromString(bgcolor);

      String appbarbgcolor = jsonResponse["appbarbgcolor"];
      //calling getColorFromString function()
      AppTheme.appbarbgcolor = getColorFromString(appbarbgcolor);

      String appname = jsonResponse["appname"];
      AppText.appname = appname;
      return "Kabootar";
    } catch (e) {
      print(e);
      return false;
    }
  }
}
