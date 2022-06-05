import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:grad_project/layout/home_layout.dart';
import 'package:http/http.dart' as http;

class APILogin {
  static const String _BASE_URL = 'http://workspacelive.herokuapp.com/api';

  static Future<http.Response> UserLogin(String username, String password) async {

    // business logic to send data to server
    final http.Response response = await http.post(Uri.parse('$_BASE_URL/login'),
        headers: <String, String>{
          'Content-type': 'application/json;charset=UTF-8',
          'Accept': 'application/json',
        },
        body: jsonEncode(<String, String>{
          "username": username,
          "password": password,
        }));
    if (response.statusCode == 200) {
      print(response.body);
      print(response.statusCode);
    } else {
      print(response.statusCode);
      print('try Again!');
    }
    return response;
  }
}
