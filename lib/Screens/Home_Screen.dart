import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // To define numbers we have various datatypes in dart
  int num1 = 4;
  double pi = 3.14;

  // We also have a generic datatype for numbers which can hold both int & double.
  num number = 3;

  // We also have String datatype to store sequence of characters i.e. Strings
  String name = "Learn";

  // We also have bool datatype to boolean values store two values i.e. true or false
  bool isTrue = true;

  // Then we const and final keywords for variables.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("First Project to $name Flutter"),
        ),
      ),
      drawer: Drawer()  ,
    );
  }
}
