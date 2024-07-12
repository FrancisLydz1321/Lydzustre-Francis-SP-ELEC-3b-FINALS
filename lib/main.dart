import 'package:chatt_app_finals/pages/chatpage.dart';
import 'package:chatt_app_finals/pages/home.dart';
import 'package:chatt_app_finals/pages/signin.dart';
import 'package:chatt_app_finals/pages/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Firebase for Web
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyDZX0XzFj09-oW7qEt2DeQ4mDHIMhuUhNo",
        appId: "1:390388930342:web:d4efa8d69ac6055a7853e7",
        messagingSenderId: "390388930342",
        projectId: "chat-app-finals",
      ),
    );
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: SignIn(),
      // home: SignUp(),
      // home: Home(),
      home: ChatPage(),
    );
  }
}
