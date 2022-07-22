import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/size.dart';

class ScreenForgotPassword extends StatefulWidget {
  const ScreenForgotPassword({Key? key}) : super(key: key);

  @override
  State<ScreenForgotPassword> createState() => _ScreenForgotPasswordState();
}

class _ScreenForgotPasswordState extends State<ScreenForgotPassword> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future _passwordreset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            content: Text(
              'Password reset link send! Check your email.',
            ),
          );
        },
      );
      // ignore: unused_catch_clause
    } on FirebaseAuthException catch (e) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: amb,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //text

            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * .1,
                  left: MediaQuery.of(context).size.width * .1),
              child: Text(
                'Forgot Password?',
                style: GoogleFonts.rokkitt(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            heit,

            //email field

            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * .1,
                  left: MediaQuery.of(context).size.width * .1),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            heit,

            //button

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: amb,
                padding: const EdgeInsets.symmetric(horizontal: 34),
              ),
              onPressed: () {
                _passwordreset();
              },
              child: const Text(
                'Send Link',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
