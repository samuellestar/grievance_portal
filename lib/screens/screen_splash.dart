import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grievance_portal/constants/colors.dart';
import 'package:grievance_portal/screens/screen_login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    gotoLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Grievance Portal',
              style: GoogleFonts.macondo(fontSize: 60, color: amb),
            ),
          ),
          const Flexible(
            child: SizedBox(
              height: 300,
            ),
          ),
          Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 128, 116, 116),
              borderRadius: BorderRadius.circular(4),
              image: const DecorationImage(
                image: AssetImage('assets/images/logo1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> gotoLogin() async {
    Future.delayed(
      const Duration(seconds: 100),
    );
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: ((context) => const ScreenLogin()),
      ),
    );
  }
}
