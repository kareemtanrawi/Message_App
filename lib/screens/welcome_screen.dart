import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:message_app/screens/registeration_screen.dart';
import 'package:message_app/screens/signin_screen.dart';

import '../widgets/My_Button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),
                const Text(
                  'Message Me',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff2e386b),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            MyButton(
              color: Colors.yellow[900],
              title: 'Sign in',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SigninScreen();
                    },
                  ),
                );
              },
            ),
            MyButton(
              color: Colors.blue[800],
              title: 'Register',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const RegisterationScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
