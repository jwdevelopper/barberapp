import 'package:barberapp/app/global/widgets/text_field_container.dart';
import 'package:barberapp/app/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  bool showPassword;
  VoidCallback changeShowPassword;
  RoundedPasswordField({
    Key? key,
    required this.onChanged, 
    required this.controller,
    this.showPassword = false, 
    required this.changeShowPassword
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: (value){
          if(value!.isEmpty){
            return 'Campo obrigatório';
          }
          if(value.length < 5){
            return 'A senha deve conter mais de 5 digitos';
          }
          return null; 
        },
        controller: controller,
        obscureText: !showPassword,
        onChanged: onChanged,
        cursorColor: Get.theme.primaryColor,
        decoration: InputDecoration(
          hintText: "Senha",
          icon: Icon(
            Icons.lock,
            color: Get.theme.primaryColor,
          ),
          suffixIcon: IconButton(
            onPressed: changeShowPassword, 
            icon: Icon(
            Icons.visibility,
            color: Get.theme.primaryColor,
          ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}