import 'package:flutter/material.dart';
import 'package:grievance_portal/helpers/layout.dart';
import 'package:grievance_portal/screens/screen_home.dart';

import '../constants/colors.dart';
import '../constants/size.dart';

class ScreenLoginSmall extends StatefulWidget {
  const ScreenLoginSmall({Key? key}) : super(key: key);

  @override
  State<ScreenLoginSmall> createState() => _ScreenLoginSmallState();
}

class _ScreenLoginSmallState extends State<ScreenLoginSmall> {
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isDataMatched = false;
  bool _isVisible = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        body: Form(
          key: _formKey,
          child: ListView(
            children: [
              Flexible(
                child: Container(
                  width: 300,
                  height: 130,
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.07,
                      left: 35,
                      right: 35),
                  child: const Image(
                    image: AssetImage('assets/images/logo1.png'),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2,
                    right: MediaQuery.of(context).size.width * .15,
                    left: MediaQuery.of(context).size.width * .15),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _idController,
                      decoration: InputDecoration(
                        hintText: 'Id',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Value empty';
                        } else {
                          return null;
                        }
                      },
                    ),
                    heit,
                    TextFormField(
                      controller: _passwordController,
                      obscureText: !_isVisible,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isVisible = !_isVisible;
                            });
                          },
                          icon: _isVisible
                              ? const Icon(
                                  Icons.visibility,
                                  color: Colors.black,
                                )
                              : const Icon(
                                  Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                        ),
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Value empty';
                        } else {
                          return null;
                        }
                      },
                    ),
                    heit,
                    ElevatedButton(
                      onPressed: () {
                        // signIn();
                        if (_formKey.currentState!.validate()) {
                          _checkLogin(context);
                        }
                      },
                      child: const Text('Login'),
                      style: ElevatedButton.styleFrom(
                        elevation: 8,
                        primary: Colors.black,
                        shadowColor: Colors.blueGrey,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 100,
                          vertical: 14,
                        ),
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: bgcolor),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Visibility(
                      visible: _isDataMatched,
                      child: const Text(
                        'Invalid entries',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        openDialog();
                      },
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _checkLogin(BuildContext ctx) {
    final _id = _idController.text;
    final _password = _passwordController.text;
    if (_id == _password) {
      Future.delayed(Duration.zero, () {
        setState(() {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: ((ctx1) => const ScreenHome()),
            ),
          );
        });
      });
    } else {
      setState(() {
        _isDataMatched = true;
      });
    }
  }

  Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            'Reset password link is send to your registered mobile number',
            style: TextStyle(fontSize: 14),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Future.delayed(
                    Duration.zero,
                    (() {
                      setState(() {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: ((context) => siteLayout())),
                            (route) => false);
                      });
                    }),
                  );
                },
                child: const Text('Close'))
          ],
        ),
      );
}
