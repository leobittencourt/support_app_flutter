import 'dart:convert';
import 'package:support_app_flutter/config/endpoints.dart';
import 'package:http/http.dart' as http;

class CalledsServices {
  Future<Map<String, dynamic>> getAllCalleds() async {
    try {
      http.Response response = await http.get('$endpoint/v1/calleds/',
          headers: {'Content-Type': 'application/json'});
      Map<String, dynamic> data = json.decode(utf8.decode(response.bodyBytes));

      if (response.statusCode == 200) {
        return data;
      } else {
        throw 'Não foi possível realizar o login';
      }

      return null;
    } catch (e) {
      throw e;
    }
  }
}
