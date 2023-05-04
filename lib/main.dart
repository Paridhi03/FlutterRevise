import 'package:flutter/material.dart';
import 'package:flutter_app1/Screens/Home_Screen.dart';
import 'package:flutter_app1/Screens/Login_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //  home: HomeScreen(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": ((context) => LoginScreen()),
        "/Login": ((context) => LoginScreen()),
      },
    );
  }
}
