import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/size.dart';

class ScreenProfile extends StatelessWidget {


  
  const ScreenProfile({Key? key}) : super(key: key);

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
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Center(
          child: Flexible(
            child: ListView(
              children: [
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
                // ignore: prefer_const_constructors
                Center(
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Samuel Lestar',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                heit,
                heit,

                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Flexible(
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Flexible(
                            child: Text(
                              'E-mail id    : ',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'samuellestar2001@gmail.com',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                heit,
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Flexible(
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Flexible(
                            child: Text(
                              'Phone no. : ',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              '+91 9633734451',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                heit,
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Flexible(
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Flexible(
                            child: Text(
                              'Stream      : ',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'B.Tech',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                heit,

                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Flexible(
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Flexible(
                            child: Text(
                              'Course      : ',
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              'Computer Science And Engineering',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                heit,

                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Flexible(
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Flexible(
                            child: Text(
                              'Batch        : ',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              '2019-23',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
