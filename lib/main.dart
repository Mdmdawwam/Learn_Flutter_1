import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:profil/firebase_options.dart';
import 'package:profil/loginpage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); // Inisialisasi Firebase

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Loginpage(),
  ));
}
