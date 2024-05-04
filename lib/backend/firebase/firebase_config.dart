import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "",
            authDomain: "pantalla-bienvenida-k6wc8w.firebaseapp.com",
            projectId: "pantalla-bienvenida-k6wc8w",
            storageBucket: "pantalla-bienvenida-k6wc8w.appspot.com",
            messagingSenderId: "433685142225",
            appId: "1:433685142225:web:44496726d7abb3254283f0"));
  } else {
    await Firebase.initializeApp();
  }
}
