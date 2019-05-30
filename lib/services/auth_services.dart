import 'dart:convert';
import 'package:support_app_flutter/config/endpoints.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  Future<String> token(String email, String password) async {
    try {
      http.Response response = await http.post('$endpoint/auth/token/',
          body: jsonEncode({'email': email, 'password': password}),
          headers: {'Content-Type': 'application/json'});
      Map<String, dynamic> data = json.decode(utf8.decode(response.bodyBytes));

      if (response.statusCode == 200) {
        return data['token'];
      } else if (response.statusCode == 400) {
        throw data['message'];
      } else {
        throw 'Não foi possível realizar o login';
      }

      return null;
    } catch (e) {
      throw e;
    }
  }
}
