import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../utils/ui_utils.dart';

class AuthController extends GetxController {
  final passwordVisible = Rx<bool>(true);
  final selectedCountryPhoneCode = Rx<String>('');
  final textEditingControllers = Rx<List<TextEditingController>>([]);
  final textFields = Rx<List<TextField>>([]);
  // final auth = FirebaseAuth.instance;
  final userUid = Rx<String>('');
  final firestore = FirebaseFirestore.instance;
  final box = GetStorage();
  final isLoading = Rx<bool>(false);
  bool get isPublisher => box.read('publisher') ?? false;
  String get getName => box.read('name') ?? '';

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  void toggleVisibility() {
    passwordVisible.value = !passwordVisible.value;
  }

  Future storeValuesInGetXStorage({
    required String fullName,
    required String email,
    required String countryFlag,
    required String countryAcronym,
    required bool publisher,
    required String workplace,
    required String phoneNumber,
    required String photoUrl,
    String? uid,
  }) async {
    try {
      //store values in Getx Storage
      box.write('name', fullName);

      // print("Stored/Written value in Get Storage");
      // print(isPublisher);
    } catch (e) {
      // print("Error in storeValueInGetXStorage");
    }
  }

  Future<void> registerUser({
    required String email,
    required String password,
  }) async {
    // await auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future logInUser({required String email, required String password}) async {
    try {
      // await auth.signInWithEmailAndPassword(email: email, password: password);

      isLoading.value = false;
    } catch (e) {
      errorSnackbar(e: e.toString().split(']')[1]);

      successSnackbar(
        t: 1,
        msg:
            "If you signed up with Google , Use the Sign in with Google Button",
      );

      isLoading.value = false;
    }
  }

  Future logOutUser() async {
    try {
      // await auth.signOut();
    } catch (e) {
      errorSnackbar(e: e.toString());
    }
  }

  Future resetUserPassword({required String email}) async {
    try {
      // await auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      errorSnackbar(e: e.toString());
    }
  }

  Future deleteUser() async {
    try {
      // final FirebaseAuth auth = FirebaseAuth.instance;
      // auth.currentUser!.delete();
      // print('Current user deleted');
    } catch (e) {
      errorSnackbar(e: e.toString());
    }
  }

  Future userSetup({
    required String fullName,
    required String email,
    required String country,
    required String countryFlag,
    required String countryAcronym,
    required bool publisher,
    String? uid,
    String? workplace,
    String? phoneNumber,
    String? awardOne,
    String? awardTwo,
    String? awardThree,
    String? photoUrl,
  }) async {
    workplace ??= '';
    phoneNumber ??= '';
    awardOne ??= '';
    awardTwo ??= '';
    awardThree ??= '';
    photoUrl ??= '';

    final CollectionReference userCollection = firestore.collection('users');

    final now = DateTime.now();

    String yrJoined = now.year.toString();

    // print("Year joined $yrJoined");

    try {
      await userCollection.doc(uid).set({
        'uid': uid,
        'name': fullName,
        'email': email,
        'country': country,
        'country_flag': countryFlag,
        'country_acronym': countryAcronym,
        'publisher': publisher,
        'workplace': workplace,
        'phone_number': phoneNumber,
        'award_one': awardOne,
        'award_two': awardTwo,
        'award_three': awardThree,
        'photo_url': photoUrl,
        'yrJoined': yrJoined,
        'job': '',
        'aboutMe': '',
      });

      await storeValuesInGetXStorage(
        uid: uid,
        countryAcronym: countryAcronym,
        countryFlag: countryFlag,
        email: email,
        fullName: fullName,
        phoneNumber: phoneNumber,
        photoUrl: photoUrl,
        publisher: publisher,
        workplace: workplace,
      );
    } catch (e) {
      // print("User set up");
      errorSnackbar(e: e.toString());
    }
  }
}
