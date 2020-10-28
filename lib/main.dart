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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.deepPurple[300],
                    radius: 55.0,
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('./images/me.jpeg'),
                    ),
                  ),
                  Text(
                    'Alexis Sanchez',
                    style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GrenzeGotisch'),
                  ),
                  Text(
                    'FULLSTACK/MOBILE DEVELOPER',
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0,
                        color: Colors.deepPurpleAccent.shade100,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
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
