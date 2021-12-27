import 'dart:convert';

import 'package:barberapp/app/data/model/auth_model.dart';
import 'package:barberapp/app/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class InitialController extends GetxController {
  final box = GetStorage('barberapp');
  late Auth auth;

  String verifyAuth() {
    //print("dado do storage: " + box.read('auth'));
    //var response = Auth.fromJson(box.read('auth'));
    var response = box.read('auth');
    if (response != null) {
      auth = Auth.fromJson(response);
      //Auth auth = Auth.fromJson(new Map<String, dynamic>.from(box.read('auth')));
      //Auth auth = box.read('auth');
      if (auth != null) {
        return Routes.HOME;
      } else {
        return Routes.WELCOME;
      }
    } else {
      return Routes.WELCOME;
    }
  }
  //return Routes.WELCOME;
}
