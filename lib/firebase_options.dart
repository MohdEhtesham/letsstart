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
    apiKey: 'AIzaSyBsn73D8wyivA-S9mpGn6ctCOwedcRdlHQ',
    appId: '1:1063224115485:web:f7d41a978197586fdee1f4',
    messagingSenderId: '1063224115485',
    projectId: 'letsstart-f253c',
    authDomain: 'letsstart-f253c.firebaseapp.com',
    storageBucket: 'letsstart-f253c.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5_kMzMZz81n7wS4anM3KCYv12ZnClZCY',
    appId: '1:1063224115485:android:d4934c1246dda76cdee1f4',
    messagingSenderId: '1063224115485',
    projectId: 'letsstart-f253c',
    storageBucket: 'letsstart-f253c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCWwvL9IIpUXXYBnOBbBYT3PPr2_Sy5Mn4',
    appId: '1:1063224115485:ios:6a7979be69d17d9bdee1f4',
    messagingSenderId: '1063224115485',
    projectId: 'letsstart-f253c',
    storageBucket: 'letsstart-f253c.appspot.com',
    iosBundleId: 'com.example.letstart',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCWwvL9IIpUXXYBnOBbBYT3PPr2_Sy5Mn4',
    appId: '1:1063224115485:ios:9ddd099ab20096abdee1f4',
    messagingSenderId: '1063224115485',
    projectId: 'letsstart-f253c',
    storageBucket: 'letsstart-f253c.appspot.com',
    iosBundleId: 'com.example.letstart.RunnerTests',
  );
}
