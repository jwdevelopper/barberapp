import 'package:barberapp/app/data/model/user_model.dart';
import 'package:barberapp/app/data/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final repository = Get.find<AuthRepository>();
  final formKey = GlobalKey<FormState>();
  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  late User user;

  RxBool showPassword = false.obs;
  RxBool loading = false.obs;

  void register() async {
    if (formKey.currentState!.validate()) {
      loading.value = true;
      user = await repository.register(usernameCtrl.text, passwordCtrl.text);
      if (user != null) {
        Get.offAllNamed('/login');
      }
    }
    loading.value = false;
  }
}
