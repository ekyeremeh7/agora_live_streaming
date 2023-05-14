// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCrFulIOWBKz-8PMvqdYPhfuNitGF5F27s',
    appId: '1:613470669071:web:8ef4bb6e21e37cf0df967a',
    messagingSenderId: '613470669071',
    projectId: 'agora-live-streaming-app',
    authDomain: 'agora-live-streaming-app.firebaseapp.com',
    storageBucket: 'agora-live-streaming-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCqhqER8YS7lfGbW_uf9xXecldD9DbMaCg',
    appId: '1:613470669071:android:0798ac0db185eb91df967a',
    messagingSenderId: '613470669071',
    projectId: 'agora-live-streaming-app',
    storageBucket: 'agora-live-streaming-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWpxr5jxcJEqMjVGR4n4sG9Ek90L_sH4k',
    appId: '1:613470669071:ios:6cdbcb455719202ddf967a',
    messagingSenderId: '613470669071',
    projectId: 'agora-live-streaming-app',
    storageBucket: 'agora-live-streaming-app.appspot.com',
    iosClientId: '613470669071-erc7g8b729iuah9qjoe3a9bvdvbvblvb.apps.googleusercontent.com',
    iosBundleId: 'com.example.agoraLiveStreaming',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBWpxr5jxcJEqMjVGR4n4sG9Ek90L_sH4k',
    appId: '1:613470669071:ios:6cdbcb455719202ddf967a',
    messagingSenderId: '613470669071',
    projectId: 'agora-live-streaming-app',
    storageBucket: 'agora-live-streaming-app.appspot.com',
    iosClientId: '613470669071-erc7g8b729iuah9qjoe3a9bvdvbvblvb.apps.googleusercontent.com',
    iosBundleId: 'com.example.agoraLiveStreaming',
  );
}
