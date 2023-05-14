import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class CheckInternet extends GetxService {


  static Future<bool> checkInternet() async {
   
    bool check;
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      check = true;
    } else {
      check = false;
    }
    return check;
  }

}