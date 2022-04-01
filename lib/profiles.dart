import 'package:flutter/material.dart';
import 'package:icha_store/components/bottomNavigation.dart';
import 'package:icha_store/components/header.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            header("Profiles", context),
            Center(
                child: SizedBox(
              height: 115,
              width: 115,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/profile.jpg"),
              ),
            )),
            SizedBox(height: 20),
            buildProfile("My Account", Icons.person),
            buildProfile("Notifications", Icons.doorbell_outlined),
            buildProfile("Settings", Icons.settings_rounded),
            buildProfile("Log Out", Icons.login_outlined),
          ])),
      bottomNavigationBar("profile"),
    ])));
  }
}

Widget buildProfile(String title, IconData iconData) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: TextButton(
      style: TextButton.styleFrom(
          primary: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          backgroundColor: Color(0xFFF5F6F9),
          padding: EdgeInsets.all(20)),
      onPressed: () {},
      child: Row(
        children: [
          Icon(iconData),
          SizedBox(width: 20),
          Expanded(
            child: Text(title),
          ),
          Icon(Icons.arrow_back_ios_outlined),
        ],
      ),
    ),
  );
}
