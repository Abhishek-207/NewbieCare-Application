import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBoDQJq6swbhG_BK4pjUk4RX3xQ62r_E5c",
            authDomain: "newbiecare-301de.firebaseapp.com",
            projectId: "newbiecare-301de",
            storageBucket: "newbiecare-301de.appspot.com",
            messagingSenderId: "788050152285",
            appId: "1:788050152285:web:3d57582c448b12c69b36b4",
            measurementId: "G-9CXF53L5TL"));
  } else {
    await Firebase.initializeApp();
  }
}
