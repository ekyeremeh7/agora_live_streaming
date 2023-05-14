import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/snackbar.dart';
import '../services/check_internet.dart';

class Helpers {
  Helpers._();

  static Future<dynamic> connectivityWrapper(VoidCallback callback,
      {String? screen}) async {
    bool netAvailability = await CheckInternet.checkInternet();
    if (netAvailability) {
      callback();
    } else {
      // print("Screen ${screen.toString()}");
      getSnackbar(
        title: "Network Error",
        message: "Please connect to a mobile or Wifi Network.",
        backgroundColor: Colors.red,
        icon: Icons.wifi_off,
        duration: 2,
        snackPosition: SnackPosition.BOTTOM,
      );

      // screen == 'profile'
      //     ? p.isLoading.value = false
      //     :
      //     //do nothing
      //     Container();
    }
  }
}
