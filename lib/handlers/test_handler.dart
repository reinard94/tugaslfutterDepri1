
import 'dart:convert';

import 'package:flutter_application_1/models/ip_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
class TestHandler {

  static Future<String> getIP() async {
    var params = {
      "format": "json"
    };

    //Response
    var response = await http.get(
      Uri.https("api.ipify.org", "", params)
    );

    if(response.statusCode != 200){
      throw "Error api";
    } 

    IP myIP = IP.fromMap(jsonDecode(response.body));

    return myIP.ip;
  }
}