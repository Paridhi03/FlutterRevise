import 'dart:ffi';

import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  //Passing the Items from CatalogModel class.
  final Item item;

// Constructor for getting item value
  // ignore: unnecessary_null_comparison
  const ItemWidget({Key? key, required this.item})
      : assert(item != null), // assert cannot be used in production.
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          onTap: (() {
            print("${item.name} pressed");
          }),
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$${item.price}",
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
          )),
    );
  }
}
