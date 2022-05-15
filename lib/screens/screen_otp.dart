import 'package:flutter/material.dart';

class ScreenOTP extends StatelessWidget {
  const ScreenOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 500,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Confirm the OTP send to your registered phone number.',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                height: 2,
                width: 500,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: const InputDecoration(),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
