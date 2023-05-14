import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/snackbar.dart';
// import 'finders.dart';

File? selectedImageFile;
final selectedImagePath = Rx<String>('');
final selectedImageSize = Rx<String>('');
final cropImagePath = Rx<String>('');
final cropImageSize = Rx<String>('');
final compressImagePath = Rx<String>('');
final compressImageSize = Rx<String>('');

void errorSnackbar({required String e}) {
  getSnackbar(
    title: 'Error !!! ',
    // message: e.toString().split(']')[1],
    message: e,
    backgroundColor: Colors.red,
    icon: Icons.error,
    duration: 2,
    snackPosition: SnackPosition.BOTTOM,
  );
}

void successSnackbar({required int t, required msg}) {
  getSnackbar(
    title: t == 1
        ? "Information "
        : t == 2
            ? "Notice"
            : t == 3
                ? "Message"
                : t == 4
                    ? "Saved"
                    : t == 5
                        ? 'Password Reset'
                        : '',
    message: msg,
    backgroundColor: Colors.green,
    icon: t == 4
        ? Icons.bookmark
        : t == 5
            ? Icons.message_rounded
            : Icons.article_outlined,
    duration: msg == "Comment posted" ? 1 : 3,
    snackPosition: SnackPosition.BOTTOM,
  );
}

// void openLogOutDialog() {
//   Get.dialog(
//     barrierDismissible: true,
//     AlertDialog(
//       elevation: 10,
//       // title: Text(
//       //   "Log out".toUpperCase(),
//       //   textAlign: TextAlign.center,
//       //   style: kLoadingDialogTextStyle,
//       // ),
//       backgroundColor: Colors.white,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       insetPadding: const EdgeInsets.symmetric(horizontal: 70),
//       actionsPadding: EdgeInsets.zero,
//       buttonPadding: EdgeInsets.zero,
//       // contentPadding: EdgeInsets.zero,
//       contentPadding: const EdgeInsets.only(top: 20, bottom: 2),
//       content: Text(
//         'Are you sure ? ',
//         textAlign: TextAlign.center,
//         // style: kAreYouSureTextStyle,
//       ),
//       actions: [
//         TextButton(
//             style: const ButtonStyle(),
//             child: const Text(
//               "Yes",
//               textAlign: TextAlign.right,
//               style: TextStyle(
//                 color: Colors.green,
//                 fontSize: 15,
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//             onPressed: () async {
//               await a.logOutUser();

//               // m.resetMain();
//               // p.resetUserProfile();

//               // Get.back();

//               // Get.to(() => const LogInView());
//             }),
//         TextButton(
//           style: const ButtonStyle(
//               // backgroundColor: MaterialStateProperty.all(Colors.white),
//               ),
//           child: const Text(
//             "No",
//             textAlign: TextAlign.right,
//             style: TextStyle(
//               color: Colors.red,
//               fontSize: 15,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           onPressed: () => Get.back(),
//         ),
//       ],
//     ),
//   );
// }

