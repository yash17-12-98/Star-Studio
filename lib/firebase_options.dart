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
    apiKey: 'AIzaSyBozQxWkaObwmtYQZNK9VNkrGccnVOzD-I',
    appId: '1:553608015155:web:bbe5a936e1b784f6a5a246',
    messagingSenderId: '553608015155',
    projectId: 'star-studio-20bb7',
    authDomain: 'star-studio-20bb7.firebaseapp.com',
    storageBucket: 'star-studio-20bb7.appspot.com',
    measurementId: 'G-7ZJDNQPX0J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQ4vkDFnaYEank1Mz2GfM2IuAsnnCHQAs',
    appId: '1:553608015155:android:164344f489bb344da5a246',
    messagingSenderId: '553608015155',
    projectId: 'star-studio-20bb7',
    storageBucket: 'star-studio-20bb7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2TG0PAiSdDh38tBaOb6PIziDRRGvUjx4',
    appId: '1:553608015155:ios:6c16f1677d076b20a5a246',
    messagingSenderId: '553608015155',
    projectId: 'star-studio-20bb7',
    storageBucket: 'star-studio-20bb7.appspot.com',
    iosClientId: '553608015155-tbb92q1u731v391101ep11miieno6rkl.apps.googleusercontent.com',
    iosBundleId: 'com.example.starStudio',
  );
}
