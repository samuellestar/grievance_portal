import 'package:flutter/material.dart';
import 'package:grievance_portal/constants/colors.dart';
import 'package:grievance_portal/screens/screen_home.dart';
import 'package:grievance_portal/screens/screen_login.dart';

import '../constants/size.dart';

class ScreenSignup extends StatefulWidget {
  const ScreenSignup({Key? key}) : super(key: key);

  @override
  State<ScreenSignup> createState() => _ScreenSignupState();
}

class _ScreenSignupState extends State<ScreenSignup> {
  final _idController = TextEditingController();
  final _phoneNoController = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _nameContoller = TextEditingController();
  final _confirmpasswordcontroller = TextEditingController();

  late final bool _isDataMatched = false;
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
                    right: MediaQuery.of(context).size.width * .3,
                    left: MediaQuery.of(context).size.width * .3),
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
                      controller: _nameContoller,
                      decoration: InputDecoration(
                        hintText: 'Name',
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
                      controller: _phoneNoController,
                      decoration: InputDecoration(
                        hintText: 'Phone no.',
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
                      controller: _passwordcontroller,
                      obscureText: true,
                      decoration: InputDecoration(
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
                    TextFormField(
                      controller: _confirmpasswordcontroller,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Confirm password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Value empty';
                        } else if (_passwordcontroller.text ==
                            _confirmpasswordcontroller.text) {
                          return null;
                        } else {
                          return 'Password doesnot match';
                        }
                      },
                    ),
                    Visibility(
                      visible: _isDataMatched,
                      child: const Text(
                        'Password doesnot match',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    heit,
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _gotoHome(context);
                        }
                      },
                      child: const Text('Create'),
                      style: ElevatedButton.styleFrom(
                        elevation: 8,
                        primary: Colors.black,
                        shadowColor: Colors.blueGrey,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 100,
                          vertical: 18,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text('Already have an account?'),
                        TextButton(
                          onPressed: () {
                            Future.delayed(
                              Duration.zero,
                              (() {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ScreenLogin()),
                                );
                              }),
                            );
                          },
                          child: const Text('Login'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _gotoHome(BuildContext ctx) {
    Future.delayed(Duration.zero, () {
      setState(() {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: ((ctx1) => const ScreenHome()),
          ),
        );
      });
    });
  }
}
