import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD5_YHZeU79jOWxl-zzJ7X2tmkiPznsOuk",
            authDomain: "tormentorecords-58f2f.firebaseapp.com",
            projectId: "tormentorecords-58f2f",
            storageBucket: "tormentorecords-58f2f.firebasestorage.app",
            messagingSenderId: "757495534000",
            appId: "1:757495534000:web:5bfe1b1e8908cd87bc8675",
            measurementId: "G-S0NG7C8YTD"));
  } else {
    await Firebase.initializeApp();
  }
}
