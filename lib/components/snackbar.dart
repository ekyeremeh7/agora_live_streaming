import 'package:flutter/material.dart';
import 'package:get/get.dart';

void getSnackbar({
  required String title,
  required String message,
  required Color backgroundColor,
  required IconData icon,
  required int duration,
  required SnackPosition snackPosition,
}) {
  Get.showSnackbar(
    GetSnackBar(
      title: title,
      message: message,
      backgroundColor: backgroundColor,
      icon: Icon(
        icon,
        color: Colors.white,
      ),
      duration: Duration(seconds: duration),
      animationDuration: Duration(seconds: duration),
      overlayBlur: 2,
      snackPosition: snackPosition,
    ),
  );
}
