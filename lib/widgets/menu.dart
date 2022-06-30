import 'package:flutter/material.dart';
import 'package:grievance_portal/constants/colors.dart';
import 'package:grievance_portal/helpers/layout.dart';
import 'package:grievance_portal/screens/screen_change_password.dart';
import 'package:grievance_portal/screens/screen_change_phonenumber.dart';
import 'package:grievance_portal/screens/screen_profile.dart';

// ignore: camel_case_types
class widgetMenu extends StatelessWidget {
  const widgetMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: amb,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            ListTile(
              leading: const Icon(
                Icons.close,
                color: Colors.white,
              ),
              // title: const Text('Close'),
              onTap: (() {
                Navigator.pop(context);
              }),
            ),
            ListTile(
              leading: const Icon(
                Icons.people,
                color: Colors.white,
              ),
              title: const Text(
                'Account',
                style: TextStyle(
                  color: Colors.white24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((ctx1) => const ScreenProfile()),
                  ),
                );
              }),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.lock,
                color: Colors.white,
              ),
              title: const Text(
                'Change password',
                style: TextStyle(
                  color: Colors.white24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((ctx1) => const ScreenChangePassword()),
                  ),
                );
              }),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.phone_callback,
                color: Colors.white,
              ),
              title: const Text(
                'Change phone number',
                style: TextStyle(
                  color: Colors.white24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (() {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((ctx1) => const ScreenChangePhoneNumber()),
                  ),
                );
              }),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.logout_sharp,
                color: Colors.white,
              ),
              title: const Text(
                'Log-out',
                style: TextStyle(
                  color: Colors.white24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: (() {
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return siteLayout();
                }), (route) => false);
              }),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
