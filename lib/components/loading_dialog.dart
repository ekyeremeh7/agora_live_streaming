import 'package:flutter/material.dart';
import 'package:get/get.dart';

void loadingDialog() => Get.defaultDialog(
      title: 'Loading ...',
      // titleStyle: kLoadingDialogTextStyle,
      barrierDismissible: false,
      content: const CircularProgressIndicator(
        color: Color.fromARGB(255, 15, 85, 142),
        strokeWidth: 6,
        // backgroundColor: AppColors.greyDeepColor,
      ),
    );
