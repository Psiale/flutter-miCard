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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.deepPurple[300],
                    radius: 55.0,
                    child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('./images/me.jpeg'),
                    ),
                  ),
                  textBuilder('Alexis Sanchez', 'GrenzeGotisch', 40.0,
                      Colors.white, FontWeight.bold),
                  textBuilder('FULLSTACK DEVELOPER', 'SourceSansPro', 20.0,
                      Colors.deepPurpleAccent.shade100, FontWeight.bold,
                      spacing: 2.5),
                  SizedBox(
                    height: 20.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.purple[50],
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.deepPurpleAccent.shade700,
                      ),
                      title: textBuilder('2224922157', 'SourceSansPro', 20.0,
                          Colors.deepPurpleAccent.shade700, FontWeight.normal),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.deepPurpleAccent.shade700,
                      ),
                      title: textBuilder(
                          'psialedev@gmail.com',
                          'SourceSansPro',
                          20.0,
                          Colors.deepPurpleAccent.shade700,
                          FontWeight.normal),
                    ),
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

Widget textBuilder(
    String message, String family, double size, Color color, FontWeight weight,
    {double spacing = 1.0}) {
  return Text(
    message,
    style: TextStyle(
        fontFamily: family,
        fontSize: size,
        color: color,
        letterSpacing: spacing,
        fontWeight: weight),
  );
}
