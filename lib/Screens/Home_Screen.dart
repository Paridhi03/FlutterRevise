import 'package:flutter/material.dart';
import 'package:flutter_app1/models/catalog.dart';
import 'package:flutter_app1/widgets/drawer.dart';
import 'package:flutter_app1/widgets/item_widget.dart';

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
    //DummyList can be used to test our UI
    final dummyList = List.generate(5, ((index) => CatalogModel.items[0]));

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          // //  Code for dummy List
          // itemCount: dummyList.length,
          // itemBuilder: (context, index) {
          //   return ItemWidget(item: dummyList[index]);
          // },

          //itemCount tells number of tiles/items to be displayed
          itemCount: CatalogModel.items.length,
          //itemBuilder tells how the items should be displayed i.e. appearance. Here we have (index) which means the position of the item like w ehave in arrays. So we can use this to access the items.
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
