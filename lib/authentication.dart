import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:profil/navigator.dart';

class Authentication {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  // LOGIN
  static Future<void> signIn({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Jika berhasil login, arahkan ke halaman Navigation
      if (userCredential.user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Navigation()),
        );
      }
    } on FirebaseAuthException catch (e) {
      String message = _getMessageFromErrorCode(e.code);
      _showErrorDialog(context, message);
    }
  }

  // REGISTER
  static Future<void> createAccount({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Navigator.pop(context); // kembali ke login
    } on FirebaseAuthException catch (e) {
      String message = _getMessageFromErrorCode(e.code);
      _showErrorDialog(context, message);
    }
  }

  static String _getMessageFromErrorCode(String code) {
    switch (code) {
      case 'email-already-in-use':
        return 'Email sudah terdaftar.';
      case 'invalid-email':
        return 'Format email salah.';
      case 'weak-password':
        return 'Password terlalu lemah.';
      case 'user-not-found':
        return 'Email tidak ditemukan.';
      case 'wrong-password':
        return 'Password salah.';
      default:
        return 'Terjadi kesalahan.';
    }
  }

  static void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          )
        ],
      ),
    );
  }
}
