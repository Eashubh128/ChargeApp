import 'dart:async';

import 'package:charging_app/Screens/login_screen.dart';
import 'package:charging_app/Screens/qr_sacn_screen.dart';
import 'package:charging_app/globals.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    tokenForsharedpref == null ? Login() : Qr_scan_screen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.only(top: 220, bottom: 50),
        child: Column(children: [
          Container(
            child: Image.asset(
              "assets/logo.png",
              scale: .7,
            ),
            padding: EdgeInsets.only(left: 10, right: 10),
          ),
          const SizedBox(
            height: 73,
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            child: Image.asset("assets/Decarbonizing Bharat.png"),
          )
        ]),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff292E37),
            Color(0xff090A0C),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        height: double.maxFinite,
        width: double.maxFinite,
      ),
    );
  }
}
