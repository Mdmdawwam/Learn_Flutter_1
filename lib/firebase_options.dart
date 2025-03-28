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
    apiKey: 'AIzaSyDzzy5JqSbcVbMdBvbzfRBsJunICOy0Jdo',
    appId: '1:911795646109:web:1f32f14c3efa0b771e6e74',
    messagingSenderId: '911795646109',
    projectId: 'flutter-56e9e',
    authDomain: 'flutter-56e9e.firebaseapp.com',
    storageBucket: 'flutter-56e9e.firebasestorage.app',
    measurementId: 'G-9V6P8G00TQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC5gHxH_uswjXlMuyrA0Nz9ecgZ5HReCWA',
    appId: '1:911795646109:android:a848d87fa48d668c1e6e74',
    messagingSenderId: '911795646109',
    projectId: 'flutter-56e9e',
    storageBucket: 'flutter-56e9e.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBBdP5lR0BBE2ejAnNBc8qlLr7F5wK5sZ0',
    appId: '1:911795646109:ios:bfd2596af387b9731e6e74',
    messagingSenderId: '911795646109',
    projectId: 'flutter-56e9e',
    storageBucket: 'flutter-56e9e.firebasestorage.app',
    iosBundleId: 'com.example.profil',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBBdP5lR0BBE2ejAnNBc8qlLr7F5wK5sZ0',
    appId: '1:911795646109:ios:bfd2596af387b9731e6e74',
    messagingSenderId: '911795646109',
    projectId: 'flutter-56e9e',
    storageBucket: 'flutter-56e9e.firebasestorage.app',
    iosBundleId: 'com.example.profil',
  );
}
