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
    apiKey: 'AIzaSyD_XuVZIfzZA-p907ik1g1FBEHNTNfTk40',
    appId: '1:539610146507:web:78612332f0ba26fcf79d4e',
    messagingSenderId: '539610146507',
    projectId: 'flutterfirebaseanalytics-6d8a3',
    authDomain: 'flutterfirebaseanalytics-6d8a3.firebaseapp.com',
    storageBucket: 'flutterfirebaseanalytics-6d8a3.appspot.com',
    measurementId: 'G-TL9WCVE7CY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAut3HKwF68U9V7TlaXeVwo0XDRFAbhuuo',
    appId: '1:539610146507:android:c724c888b19c3a06f79d4e',
    messagingSenderId: '539610146507',
    projectId: 'flutterfirebaseanalytics-6d8a3',
    storageBucket: 'flutterfirebaseanalytics-6d8a3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBJN8J_9OVBpyui_1sTmYKPUjxdKnbVL54',
    appId: '1:539610146507:ios:9a1cc8a1bc2adb96f79d4e',
    messagingSenderId: '539610146507',
    projectId: 'flutterfirebaseanalytics-6d8a3',
    storageBucket: 'flutterfirebaseanalytics-6d8a3.appspot.com',
    iosBundleId: 'com.example.flutterFirebaseEvent',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBJN8J_9OVBpyui_1sTmYKPUjxdKnbVL54',
    appId: '1:539610146507:ios:92253c2636705937f79d4e',
    messagingSenderId: '539610146507',
    projectId: 'flutterfirebaseanalytics-6d8a3',
    storageBucket: 'flutterfirebaseanalytics-6d8a3.appspot.com',
    iosBundleId: 'com.example.flutterFirebaseEvent.RunnerTests',
  );
}
