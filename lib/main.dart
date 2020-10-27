import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: SafeArea(
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.green,
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            padding: EdgeInsets.all(20.0),
            child: Text('sup'),
          ),
        ),
      ),
    );
  }
}
