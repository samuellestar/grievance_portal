import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';
import '../constants/size.dart';
import 'screen_home.dart';

class ScreenChangePassword extends StatefulWidget {
  const ScreenChangePassword({Key? key}) : super(key: key);

  @override
  State<ScreenChangePassword> createState() => _ScreenChangePasswordState();
}

class _ScreenChangePasswordState extends State<ScreenChangePassword> {
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 25,
          backgroundColor: amb,
          title: Container(
            height: 50,
            width: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo1.png'),
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'RESET PASSWORD',
                style: GoogleFonts.pressStart2p(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              heit,
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Current password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'New password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextFormField(
                    controller: _confirmPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'New password, again',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
              ),
              heit,
              GestureDetector(
                onTap: () {
                  String pass = _passwordController.text.trim();
                  int len = pass.length;
                  if (len >= 8) {
                    if (_passwordController.text.trim() ==
                        _confirmPasswordController.text.trim()) {
                      openDialog();
                    } else {
                      errorConfirmDialog();
                    }
                  } else {
                    errorDialog();
                  }
                },
                child: Container(
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(
                    color: amb,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'UPDATE',
                      style: GoogleFonts.pressStart2p(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            'UPDATED SUCCESSFULLY',
            style: TextStyle(fontSize: 14),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Future.delayed(
                    Duration.zero,
                    (() {
                      setState(() {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: ((context) => const ScreenHome())),
                        );
                      });
                    }),
                  );
                },
                child: const Text('Close'))
          ],
        ),
      );

  Future errorDialog() => showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text(
            'Error! Enter a valid password',
            style: TextStyle(fontSize: 14),
          ),
        ),
      );

  Future errorConfirmDialog() => showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text(
            'Password does not match',
            style: TextStyle(fontSize: 14),
          ),
        ),
      );
}
