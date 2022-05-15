import 'package:flutter/material.dart';
import 'package:grievance_portal/constants/colors.dart';
import 'package:grievance_portal/screens/screen_home.dart';
import '../constants/size.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _idController = TextEditingController();
  final _dobController = TextEditingController();
  bool _isDataMatched = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        body: Form(
          key: _formKey,
          child: Column(
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
                      controller: _dobController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Date of birth',
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
                        _formKey.currentState!.validate();

                        _checkLogin(context);
                      },
                      child: const Text('Login'),
                      style: ElevatedButton.styleFrom(
                        elevation: 8,
                        primary: Colors.black,
                        shadowColor: Colors.blueGrey,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 100,
                          vertical: 16,
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

  void _checkLogin(BuildContext ctx) {
    final _id = _idController.text;
    final _dob = _dobController.text;
    if (_id == _dob) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: ((ctx1) => ScreenHome()),
        ),
      );
    } else {
      setState(() {
        _isDataMatched = true;
      });
    }
  }
}
