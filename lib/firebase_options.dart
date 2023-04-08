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
    apiKey: 'AIzaSyDyWikmP6ij-ltypCZza9Oj5mP-twIkp3c',
    appId: '1:724781586650:web:2a49a2704fe608455dede3',
    messagingSenderId: '724781586650',
    projectId: 'mynotes-2a180',
    authDomain: 'mynotes-2a180.firebaseapp.com',
    storageBucket: 'mynotes-2a180.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC_wJ-_AyqVA-SMd59zscVgKOIsRrMmXUs',
    appId: '1:724781586650:android:229826103cd079495dede3',
    messagingSenderId: '724781586650',
    projectId: 'mynotes-2a180',
    storageBucket: 'mynotes-2a180.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAKz3YeAsCblvVva25QrMoWmK6YAymKjk0',
    appId: '1:724781586650:ios:9285795d8a8394b75dede3',
    messagingSenderId: '724781586650',
    projectId: 'mynotes-2a180',
    storageBucket: 'mynotes-2a180.appspot.com',
    iosClientId: '724781586650-8301oocvot30m4k7oo3up96ksgjvoonh.apps.googleusercontent.com',
    iosBundleId: 'com.example.mynotes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAKz3YeAsCblvVva25QrMoWmK6YAymKjk0',
    appId: '1:724781586650:ios:9285795d8a8394b75dede3',
    messagingSenderId: '724781586650',
    projectId: 'mynotes-2a180',
    storageBucket: 'mynotes-2a180.appspot.com',
    iosClientId: '724781586650-8301oocvot30m4k7oo3up96ksgjvoonh.apps.googleusercontent.com',
    iosBundleId: 'com.example.mynotes',
  );
}
