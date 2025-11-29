import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA1RvuU7WEVwFhyYfrG1vNUQclJ0ADXoYY",
            authDomain: "tormentor-records.firebaseapp.com",
            projectId: "tormentor-records",
            storageBucket: "tormentor-records.firebasestorage.app",
            messagingSenderId: "469038501434",
            appId: "1:469038501434:web:3482582cc22890b9572f03"));
  } else {
    await Firebase.initializeApp();
  }
}
