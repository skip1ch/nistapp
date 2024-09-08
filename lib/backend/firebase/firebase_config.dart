import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAmppyL2PYuYBc880MSd7iAl5CkmMnrSwY",
            authDomain: "nisapp-zdp3u0.firebaseapp.com",
            projectId: "nisapp-zdp3u0",
            storageBucket: "nisapp-zdp3u0.appspot.com",
            messagingSenderId: "820501035946",
            appId: "1:820501035946:web:68e12e548968df6c5189d3"));
  } else {
    await Firebase.initializeApp();
  }
}
