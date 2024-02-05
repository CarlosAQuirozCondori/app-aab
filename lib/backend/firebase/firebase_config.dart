import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAQLdXv37wi_JPgfWo8E_DZI8NjOBINXtQ",
            authDomain: "inicio-ec039.firebaseapp.com",
            projectId: "inicio-ec039",
            storageBucket: "inicio-ec039.appspot.com",
            messagingSenderId: "538462502930",
            appId: "1:538462502930:web:0dd90d70fe71841e4a58cb"));
  } else {
    await Firebase.initializeApp();
  }
}
