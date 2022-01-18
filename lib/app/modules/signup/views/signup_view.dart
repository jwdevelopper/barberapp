import 'package:barberapp/app/global/widgets/already_have_an_account_acheck.dart';
import 'package:barberapp/app/global/widgets/loading_global.dart';
import 'package:barberapp/app/global/widgets/rounded_button.dart';
import 'package:barberapp/app/global/widgets/rounded_input_field.dart';
import 'package:barberapp/app/global/widgets/rounded_password_field.dart';
import 'package:barberapp/app/modules/signup/views/widgets/background.dart';
import 'package:barberapp/app/modules/signup/views/widgets/or_divider.dart';
import 'package:barberapp/app/modules/signup/views/widgets/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Registrar",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: Get.height * 0.03),
                SvgPicture.asset(
                  "assets/signup.svg",
                  height: Get.height * 0.35,
                ),
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
                        text: "Registrar",
                        press: () {
                          controller.register();
                        },
                        color: Get.theme.primaryColor,
                      ),
                    )),
                Obx(() => Visibility(
                    visible: controller.loading.value,
                    child: const LoadingGlobal())),
                SizedBox(height: Get.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () {
                    Get.offAndToNamed('/login');
                  },
                ),
                OrDivider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SocalIcon(
                      iconSrc: "assets/facebook.svg",
                      press: () {},
                    ),
                    SocalIcon(
                      iconSrc: "assets/twitter.svg",
                      press: () {},
                    ),
                    SocalIcon(
                      iconSrc: "assets/google-plus.svg",
                      press: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
