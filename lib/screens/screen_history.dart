import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ScreenHistoty extends StatefulWidget {
  const ScreenHistoty({Key? key}) : super(key: key);

  @override
  State<ScreenHistoty> createState() => _ScreenHistotyState();
}

class _ScreenHistotyState extends State<ScreenHistoty> {
  final user = FirebaseAuth.instance.currentUser;
  final Stream<QuerySnapshot> users =
      FirebaseFirestore.instance.collection('grievance').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //appbar

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
      body: StreamBuilder<QuerySnapshot>(
        stream: users,
        builder: (
          BuildContext context,
          AsyncSnapshot<QuerySnapshot> snapshot,
        ) {
          if (snapshot.hasError) {
            return const Text('something went wrong.');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text('loading');
          }
          final data = snapshot.requireData;
          return ListView.builder(
            itemCount: data.size,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: bgcolor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    '${data.docs[index]['subject']}',
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
