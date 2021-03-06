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
    apiKey: 'AIzaSyABA0808LdL2v2vkkEhNSBI8e1oNErh71k',
    appId: '1:918314913921:web:f16e0e880449df8c49bd80',
    messagingSenderId: '918314913921',
    projectId: 'gsc-flutter',
    authDomain: 'gsc-flutter.firebaseapp.com',
    storageBucket: 'gsc-flutter.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBJCSO8bdrkDXr8FzrrTY6h6b0FbtMvylU',
    appId: '1:918314913921:android:4f174db6fab6858149bd80',
    messagingSenderId: '918314913921',
    projectId: 'gsc-flutter',
    storageBucket: 'gsc-flutter.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB8YdWaowbL3g9Inr29MDOv9HBZoo0Ktk0',
    appId: '1:918314913921:ios:1b52aa95f20156e349bd80',
    messagingSenderId: '918314913921',
    projectId: 'gsc-flutter',
    storageBucket: 'gsc-flutter.appspot.com',
    iosClientId: '918314913921-ic3eurqmdg3pjuvod9816a52pio547nk.apps.googleusercontent.com',
    iosBundleId: 'com.example.gsc',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB8YdWaowbL3g9Inr29MDOv9HBZoo0Ktk0',
    appId: '1:918314913921:ios:1b52aa95f20156e349bd80',
    messagingSenderId: '918314913921',
    projectId: 'gsc-flutter',
    storageBucket: 'gsc-flutter.appspot.com',
    iosClientId: '918314913921-ic3eurqmdg3pjuvod9816a52pio547nk.apps.googleusercontent.com',
    iosBundleId: 'com.example.gsc',
  );
}
