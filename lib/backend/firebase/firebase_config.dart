import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC6auzzuBAUtbbeS-b57J0r82-e-SLYcXA",
            authDomain: "paden2-92jowx.firebaseapp.com",
            projectId: "paden2-92jowx",
            storageBucket: "paden2-92jowx.firebasestorage.app",
            messagingSenderId: "514909409619",
            appId: "1:514909409619:web:a797476a17c1d69b1051a6"));
  } else {
    await Firebase.initializeApp();
  }
}
