import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: View(
        )
    );
  }
}

class View extends StatefulWidget {
  ViewState createState() => ViewState();
}

class ViewState extends State {
  // Default Background Color.
  static final Random random = Random();
  Color colorCode = Color(random.nextInt(256));

  generateRandomColor() {
    Color tmpColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );

    setState(() {
      colorCode = tmpColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        generateRandomColor();
      },
      child: new Scaffold(
        backgroundColor: colorCode,
        body: new Center(
            child: new Text("Hey there")
        ),
      ),
    );
  }
}

