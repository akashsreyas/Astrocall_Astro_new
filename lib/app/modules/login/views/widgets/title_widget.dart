import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hallo_doctor_doctor_app/app/styles/styles.dart';

Widget titleApp() {

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,


    children: [
      Image.asset(
        'assets/icons/astroCall.png',
        width: 345,
        height: 145,
        color: Colors.yellow[300],
        colorBlendMode: BlendMode.darken,



      ),
      // SizedBox(
      //   width: 10,
      // ),
      // RichText(
      //   textAlign: TextAlign.center,
      //   text: TextSpan(
      //       text: 'Astro'.tr,
      //       style: TextStyle(
      //           fontSize: 30,
      //           fontWeight: FontWeight.w700,
      //           color: Styles.secondaryBlueColor),
      //       children: [
      //         TextSpan(
      //           text: ' Call'.tr,
      //           style: TextStyle(color: Colors.black, fontSize: 30),
      //         ),
      //       ]),
      // ),
    ],
  );
}
