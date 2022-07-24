import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'login_screen.dart'; // Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(AppLogin());
}

class AppLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return const Text('error');
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return LoginScreen();
        }
        return const Text("unknown");
      },
    );
  }
}
