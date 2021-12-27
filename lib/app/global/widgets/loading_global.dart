import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingGlobal extends StatelessWidget {
  const LoadingGlobal({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      /*width: Get.width * 0.8,
      height: Get.height * 0.8,
      child: ClipRRect(
        child: Padding(
          padding: const EdgeInsets.all(12.0),*/
          child: CircularProgressIndicator(
            color: Get.theme.primaryColorLight,
          ),
        //),
      //),
    );
  }
}