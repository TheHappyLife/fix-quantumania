import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCjPbA-XwB0yPHnmK5gEEa-LGKKctN3GI8",
            authDomain: "news-30800.firebaseapp.com",
            projectId: "news-30800",
            storageBucket: "news-30800.appspot.com",
            messagingSenderId: "50029446516",
            appId: "1:50029446516:web:2892756b0392f33a4ad821",
            measurementId: "G-LHXXGCEDMG"));
  } else {
    await Firebase.initializeApp();
  }
}
