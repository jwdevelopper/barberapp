
import 'dart:convert';

import 'package:barberapp/app/data/base_url.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthApi extends GetConnect {

  final http.Client httpCliente = http.Client();

  Future<Map<String,dynamic>> login(String username, String password) async {
    try {
      Uri uri = Uri.parse(baseUrl + "/login");
      var response = await http.post(uri, body: {
        "username":username,
        "password":password
      });
      if(response.statusCode == 200){
        print("Login funcionou ");
        return json.decode(response.body);
      } else {
        print("erro login: " + response.body);
      }
      return json.decode(response.body);
    } catch(error) {
      print(error);
      return json.decode("");
    }
  }

  Future<Map<String,dynamic>> register(String username, String password) async {
    try {
      Uri uri = Uri.parse(baseUrl + "/register");
      var response = await http.post(uri, body: {
        "username":username,
        "password":password
      });
      if(response.statusCode == 200){
        print("Login funcionou ");
        return json.decode(response.body);
      } else {
        print("erro login: " + response.body);
      }
      return json.decode(response.body);
    } catch(error) {
      print(error);
      return json.decode("");
    }
  }

}