import 'package:barberapp/app/data/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final repository = Get.find<AuthRepository>();
  final formKey = GlobalKey<FormState>();
  TextEditingController usernameCtrl =  TextEditingController(); 
  TextEditingController passwordCtrl = TextEditingController(); 

}
