import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/size.dart';
import 'package:flutter_application_1/screens/screen_history.dart';
import 'package:flutter_application_1/screens/screen_login.dart';
import '../constants/colors.dart';

class ScreenProfile extends StatefulWidget {
  const ScreenProfile({Key? key}) : super(key: key);

  @override
  State<ScreenProfile> createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  String? name = '';
  String? email = '';
  String? collegeId = '';
  String? course = '';
  String? stream = '';
  String? batch = '';

  Future _getDataFromDatabase() async {
    await FirebaseFirestore.instance
        .collection('profile')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get()
        .then((snapshot) async {
      if (snapshot.exists) {
        setState(() {
          name = snapshot.data()!["name"];
          email = snapshot.data()!["email"];
          collegeId = snapshot.data()!["id"];
          course = snapshot.data()!["course"];
          stream = snapshot.data()!["stream"];
          batch = snapshot.data()!["batch"];
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _getDataFromDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Future.delayed(
                  Duration.zero,
                  (() {
                    setState(() {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: ((context) => const ScreenHistoty())),
                      );
                    });
                  }),
                );
              },
              child: const Icon(
                Icons.access_time_rounded,
                color: dark,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(
          child: Flexible(
            child: ListView(
              children: [
                heit,
                heit,
                heit,
                CircleAvatar(
                  child: ClipOval(
                    child: Image.network(
                      'https://cdn2.iconfinder.com/data/icons/web-solid/32/user-512.png',
                      fit: BoxFit.cover,
                      height: 70,
                      width: 70,
                    ),
                  ),
                  foregroundColor: Colors.black.withOpacity(.6),
                  radius: 50,
                  backgroundColor: Colors.grey,
                ),
                const SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Name : ' + name!,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    )
                  ],
                ),

                // ignore: prefer_const_constructors
                //aadhibnasservaliyath@gmail.com

                heit,
                heit,
                heit,

                Center(
                  child: GestureDetector(
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScreenLogin(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 35,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: amb,
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      child: const Text(
                        'Sign-out',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: bgcolor,
                        ),
                      ),
                    ),
                  ),
                ),
                heit,
                heit,
                heit,
                heit,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
