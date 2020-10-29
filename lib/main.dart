import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Todas las propiedades de row aplican para column,
// Si quieres expander un elemento puedes hacer que el main o el cross axis sean stretch

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
        ),
        body: Container(
          color: Colors.teal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              containerBuilder(Colors.red),
              Container(
                width: 100.0,
                height: 200.0,
                child: Column(
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.yellow,
                    ),
                    Container(
                        width: 100.0,
                        height: 100.0,
                        color: Color.fromRGBO(100, 200, 50, .7))
                  ],
                ),
              ),
              containerBuilder(Colors.blue)
            ],
          ),
        ),
      ),
    );
  }
}

Widget containerBuilder(color) {
  return Container(
    width: 100.0,
    color: color,
  );
}
