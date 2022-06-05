import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:grad_project/layout/home_layout.dart';
import 'package:http/http.dart' as http;

class ApiReset {
  static const String _BASE_URL = 'http://workspacelive.herokuapp.com/api';

  static Future<http.Response> ResetPassword(String password, String confirmed_password) async {

    // business logic to send data to server
    final http.Response response = await http.post(Uri.parse('$_BASE_URL/reset/password'),
        headers: <String, String>{
          'Content-type': 'application/json;charset=UTF-8',
          'Accept': 'application/json',
        },
        body: jsonEncode(<String, String>{
          "password": password,
          "confirmation_password": confirmed_password,
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
