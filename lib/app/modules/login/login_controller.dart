import 'dart:convert';

import 'package:barberapp/app/data/model/auth_model.dart';
import 'package:barberapp/app/data/repository/auth_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final repository = Get.find<AuthRepository>();
  late Auth auth;
  final formKey = GlobalKey<FormState>();
  TextEditingController usernameCtrl =  TextEditingController(); 
  TextEditingController passwordCtrl = TextEditingController();
  RxBool showPassword = false.obs; 
  RxBool loading = false.obs; 
  final box = GetStorage('barberapp');

  void login()  async {
    if(formKey.currentState!.validate()) {
      loading.value = true;
      auth = await repository .login(usernameCtrl.text, passwordCtrl.text);
      // ignore: unnecessary_null_comparison
      if(auth != null){
        box.write('auth', auth);
        //print(auth.toJson());
        print(box.read('auth'));
        Get.offAllNamed('/home');
      }
      loading.value = false;
    }
    var result = box.read('auth');
    print('dado do storage ' + json.encode(result));
    print('Usuario digitado: ' + usernameCtrl.text);
  }
} 