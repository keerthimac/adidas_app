// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyA9YAVpi8S6vm7vmuboHdW42SmcgA3lVZ0',
    appId: '1:228060074783:web:e63a88b4beeaeda9a0162a',
    messagingSenderId: '228060074783',
    projectId: 'adidas-app-7d870',
    authDomain: 'adidas-app-7d870.firebaseapp.com',
    storageBucket: 'adidas-app-7d870.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBMhwMEh1FS2K6iFOR2PdtmSSZEpB31gCs',
    appId: '1:228060074783:android:e96ea53a7bc49642a0162a',
    messagingSenderId: '228060074783',
    projectId: 'adidas-app-7d870',
    storageBucket: 'adidas-app-7d870.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDD_KUecSio2Qec54ddsIviyqS-G2Z1En8',
    appId: '1:228060074783:ios:eb80df29297ec998a0162a',
    messagingSenderId: '228060074783',
    projectId: 'adidas-app-7d870',
    storageBucket: 'adidas-app-7d870.appspot.com',
    iosBundleId: 'com.example.adidasApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDD_KUecSio2Qec54ddsIviyqS-G2Z1En8',
    appId: '1:228060074783:ios:eb80df29297ec998a0162a',
    messagingSenderId: '228060074783',
    projectId: 'adidas-app-7d870',
    storageBucket: 'adidas-app-7d870.appspot.com',
    iosBundleId: 'com.example.adidasApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA9YAVpi8S6vm7vmuboHdW42SmcgA3lVZ0',
    appId: '1:228060074783:web:9616172593883abda0162a',
    messagingSenderId: '228060074783',
    projectId: 'adidas-app-7d870',
    authDomain: 'adidas-app-7d870.firebaseapp.com',
    storageBucket: 'adidas-app-7d870.appspot.com',
  );
}
