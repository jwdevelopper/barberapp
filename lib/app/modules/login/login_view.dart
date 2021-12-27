import 'package:barberapp/app/global/widgets/already_have_an_account_acheck.dart';
import 'package:barberapp/app/global/widgets/loading_global.dart';
import 'package:barberapp/app/global/widgets/rounded_button.dart';
import 'package:barberapp/app/global/widgets/rounded_input_field.dart';
import 'package:barberapp/app/global/widgets/rounded_password_field.dart';
import 'package:barberapp/app/modules/login/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Background(
      child: SingleChildScrollView(
        child: Form(
          key: controller.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Entrar",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: Get.height * 0.03),
              SvgPicture.asset(
                "assets/login.svg",
                height: Get.height * 0.35,
              ),
              SizedBox(height: Get.height * 0.03),
              RoundedInputField(
                controller: controller.usernameCtrl,
                hintText: "Usuario",
                onChanged: (value) {},
              ),
              Obx(() => RoundedPasswordField(
                    showPassword: controller.showPassword.value,
                    controller: controller.passwordCtrl,
                    onChanged: (value) {},
                    changeShowPassword: () {
                      controller.showPassword.value =
                          !controller.showPassword.value;
                    },
                  )),
              Obx(() => Visibility(
                    visible: !controller.loading.value,
                    child: RoundedButton(
                      text: "LOGIN",
                      press: () {
                        controller.login();
                      },
                      color: Get.theme.primaryColor,
                    ),
                  )),
              Obx(() => Visibility(
                    visible: controller.loading.value,
                    child: const LoadingGlobal()
                  )),
              SizedBox(height: Get.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Get.offAndToNamed('/signup');
                },
              ),
            ],
          ),
        ),
      ),
    )));
  }
}
