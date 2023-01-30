// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var ques = [
    "What's your fav food?",
    "What's your fav animal?",
  ];
  int Qno = 0;

  void changeQNo() {
    print(ques.length);
    setState(() {
      if (Qno != ques.length - 1) {
        Qno += 1;
      } else {
        Qno -= 1;
      }
    });

    print(Qno);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Yo")),
        body: Column(children: [
          Text(ques[Qno]),
          ElevatedButton(
            onPressed: changeQNo,
            child: Text('Button'),
          ),
        ]),
      ),
    );
  }
}
