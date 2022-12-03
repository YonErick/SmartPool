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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA8L7IJQeihCd0P-olIAcyh4PYjYa_ylvg',
    appId: '1:569352819607:web:de83fe020640412a246ad2',
    messagingSenderId: '569352819607',
    projectId: 'smart-pool-9bfa6',
    authDomain: 'smart-pool-9bfa6.firebaseapp.com',
    storageBucket: 'smart-pool-9bfa6.appspot.com',
    measurementId: 'G-2QGW4NYVK6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBULzO8wgC3UDpG6M9HB_je_xjEVZIwegM',
    appId: '1:569352819607:android:5570884b0e3a427b246ad2',
    messagingSenderId: '569352819607',
    projectId: 'smart-pool-9bfa6',
    storageBucket: 'smart-pool-9bfa6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMqtbp-f6j9NC0dWABxnWJdFc0VD9AnNg',
    appId: '1:569352819607:ios:dd0cf8a5240cb18a246ad2',
    messagingSenderId: '569352819607',
    projectId: 'smart-pool-9bfa6',
    storageBucket: 'smart-pool-9bfa6.appspot.com',
    iosClientId: '569352819607-hv0rt4dk9l6umvt0ktedd4clallhs75b.apps.googleusercontent.com',
    iosBundleId: 'com.example.helloWorld',
  );
}