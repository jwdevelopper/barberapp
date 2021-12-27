import 'package:barberapp/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splashscreen/splashscreen.dart';

import 'initial_controller.dart';

class InitialView extends GetView<InitialController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    body: Stack(
      children: [
        SplashScreen(
          seconds: 5,
          gradientBackground: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff5a13b0),
              Color(0xff8645d6)
            ]
          ),
          loaderColor: Colors.transparent,
          navigateAfterSeconds: controller.verifyAuth(),
        ),
        Container(
          margin: const EdgeInsets.all(100),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/logo.png"),
              fit: BoxFit.contain
            ),
          ),
        )
      ],
    )
    );
  }
}