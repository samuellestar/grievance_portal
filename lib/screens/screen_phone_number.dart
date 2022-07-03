import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grievance_user_portal/constants/size.dart';
import 'package:grievance_user_portal/screens/screen_home.dart';

import '../constants/colors.dart';


class ScreenChangePhoneNumber extends StatefulWidget {
  const ScreenChangePhoneNumber({Key? key}) : super(key: key);

  @override
  State<ScreenChangePhoneNumber> createState() =>
      _ScreenChangePhoneNumberState();
}

class _ScreenChangePhoneNumberState extends State<ScreenChangePhoneNumber> {
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
              Flexible(
                child: Text(
                  'UPDATE MOBILE NUMBER',
                  style: GoogleFonts.pressStart2p(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              heit,
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'New phone number',
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
              // Flexible(
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 50),
              //     child: TextFormField(
              //       decoration: InputDecoration(
              //         hintText: 'New password',
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(35),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(
              //   height: 5,
              // ),
              // Flexible(
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(horizontal: 50),
              //     child: TextFormField(
              //       decoration: InputDecoration(
              //         hintText: 'New password, again',
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(35),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              heit,
              GestureDetector(
                onTap: () {
                  openDialog();
                },
                child: Container(
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(
                    color: amb,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Center(
                    child: Text(
                      'DONE',
                      style: GoogleFonts.pressStart2p(
                        color: bgcolor,
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
}