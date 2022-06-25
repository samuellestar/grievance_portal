import 'package:flutter/material.dart';
import 'package:grievance_portal/constants/colors.dart';

class ScreenEdit extends StatelessWidget {
  const ScreenEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        elevation: 25,
        backgroundColor: bgcolor,
        title: Center(
          child: Container(
            height: 50,
            width: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo1.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
