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
    apiKey: 'AIzaSyBWooMdWm3tG0pQupghNTIJ7Z32NN2jBgs',
    appId: '1:908413516798:web:0efe640c05f89e24825eaf',
    messagingSenderId: '908413516798',
    projectId: 'location-tracker-4591a',
    authDomain: 'location-tracker-4591a.firebaseapp.com',
    storageBucket: 'location-tracker-4591a.appspot.com',
    measurementId: 'G-6TFELMRFZ4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBOiL8bhFogZVUjnZbYK6i2PpsiP_PibdE',
    appId: '1:908413516798:android:f39aa544c10b2a95825eaf',
    messagingSenderId: '908413516798',
    projectId: 'location-tracker-4591a',
    storageBucket: 'location-tracker-4591a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCrd4VI7zpcGOxBi6gaN0vWK9p-7X9n0QY',
    appId: '1:908413516798:ios:50e587bff0048d01825eaf',
    messagingSenderId: '908413516798',
    projectId: 'location-tracker-4591a',
    storageBucket: 'location-tracker-4591a.appspot.com',
    iosBundleId: 'com.example.locationTracker',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCrd4VI7zpcGOxBi6gaN0vWK9p-7X9n0QY',
    appId: '1:908413516798:ios:43f5c1d3b6dac20b825eaf',
    messagingSenderId: '908413516798',
    projectId: 'location-tracker-4591a',
    storageBucket: 'location-tracker-4591a.appspot.com',
    iosBundleId: 'com.example.locationTracker.RunnerTests',
  );
}