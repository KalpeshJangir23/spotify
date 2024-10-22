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
    apiKey: 'AIzaSyBbIJZNxVjXX3m4uqk0knGrv8jqrwIsGHQ',
    appId: '1:635666720404:web:9a9c006a513463e4d8b681',
    messagingSenderId: '635666720404',
    projectId: 'spotify-20220109',
    authDomain: 'spotify-20220109.firebaseapp.com',
    storageBucket: 'spotify-20220109.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAusNWODCKaLT5OTp6quWoT6gNnPYAoN7A',
    appId: '1:635666720404:android:ba5ca27f252869f3d8b681',
    messagingSenderId: '635666720404',
    projectId: 'spotify-20220109',
    storageBucket: 'spotify-20220109.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBTqisqDVeNHy5CfbIZ-8cwGy6p-Yr6uec',
    appId: '1:635666720404:ios:5173758236a085e3d8b681',
    messagingSenderId: '635666720404',
    projectId: 'spotify-20220109',
    storageBucket: 'spotify-20220109.appspot.com',
    iosBundleId: 'com.example.spotifyClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBTqisqDVeNHy5CfbIZ-8cwGy6p-Yr6uec',
    appId: '1:635666720404:ios:5173758236a085e3d8b681',
    messagingSenderId: '635666720404',
    projectId: 'spotify-20220109',
    storageBucket: 'spotify-20220109.appspot.com',
    iosBundleId: 'com.example.spotifyClone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBbIJZNxVjXX3m4uqk0knGrv8jqrwIsGHQ',
    appId: '1:635666720404:web:5c947fe6042dc4b2d8b681',
    messagingSenderId: '635666720404',
    projectId: 'spotify-20220109',
    authDomain: 'spotify-20220109.firebaseapp.com',
    storageBucket: 'spotify-20220109.appspot.com',
  );
}
