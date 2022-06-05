import 'dart:convert';
import 'package:http/http.dart' as http;

class APIregister {
  static const String _BASE_URL = 'http://workspacelive.herokuapp.com/api';

  static Future<http.Response> createUser(
      String name, String email, String password, String phone) async {
    // business logic to send data to server

    final http.Response response =
    await http.post(Uri.parse('$_BASE_URL/register'),
        headers: <String, String>{
          'Content-type': 'application/json;charset=UTF-8',
          'Accept': 'application/json',
        },
        body: json.encode({
          "name": name,
          "email": email,
          "password": password,
          "phone": phone,

        }));
    print(response.body);
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.statusCode);
    }
    return response;
  }
}
