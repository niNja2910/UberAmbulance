// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HospitalPage.dart';
import 'package:flutter_application_1/pages/MapPage.dart';
import 'package:flutter_application_1/pages/AmbulancePage.dart';
import 'package:flutter_application_1/pages/MapPage2.dart';
import 'package:flutter_application_1/pages/sign_up.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.cyan,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Homepage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.signupRoute: (context) => SignUp(),
        MyRoutes.map1route: (context) => MapPage(),
        MyRoutes.ambulanceRoute: (context) => AmbulancePage(),
        MyRoutes.map2Route: (context) => MapPage2(),
        MyRoutes.hospitalRoute: (context) => HospitalPage(),
      },
    );
  }
}
