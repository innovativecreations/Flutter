// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Expense Monitor",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Expense Monitor"),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          body: Column(children: [
            Card(
              child: Text("data"),
            ),
            Card(
              child: Text("Maya"),
            )
          ]),
        ));
  }
}
