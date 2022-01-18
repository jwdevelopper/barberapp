
import 'package:barberapp/app/data/model/auth_model.dart';
import 'package:barberapp/app/data/model/user_model.dart';
import 'package:barberapp/app/data/provider/auth_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthRepository {

final AuthApi api = AuthApi();

Future<Auth> login(String username, String password) async {
  return Auth.fromJson(await api.login(username, password));
}

Future<User> register(String username, String password) async {
  Map json = await api.register(username, password);
  Get.defaultDialog(title: "Cadastro", content: Text("Usuario cadastrado com sucesso!"));
  return User.fromJson(json['user']);
}

}