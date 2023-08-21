import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:message_app/screens/chat_screen.dart';
import 'package:message_app/screens/registeration_screen.dart';
import 'package:message_app/screens/signin_screen.dart';
import 'package:message_app/screens/welcome_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MessageApp());
}

class MessageApp extends StatelessWidget {
  // const MessageApp({super.key});
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}
