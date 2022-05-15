import 'package:flutter/material.dart';
import 'package:grievance_portal/screens/screen_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Grievance Portal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenSplash(),
    );
  }
}
