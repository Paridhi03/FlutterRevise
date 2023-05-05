import 'package:flutter/material.dart';
import 'package:flutter_app1/Screens/Home_Screen.dart';
import 'package:flutter_app1/Screens/Login_Screen.dart';
import 'package:flutter_app1/utils/routes.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  home: HomeScreen(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": ((context) => LoginScreen()),
        MyRoutes.loginRoute: ((context) => LoginScreen()),
        MyRoutes.homeRoute: ((context) => HomeScreen()),
      },
    );
  }
}
