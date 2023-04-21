import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB2AesoeBH4OL-0nkrg31DygZ6zQ62HvmU",
            authDomain: "examen2-1255b.firebaseapp.com",
            projectId: "examen2-1255b",
            storageBucket: "examen2-1255b.appspot.com",
            messagingSenderId: "248803587887",
            appId: "1:248803587887:web:28b42c38127eda1ab693da",
            measurementId: "G-WGV3ZJK7DT"));
  } else {
    await Firebase.initializeApp();
  }
}
