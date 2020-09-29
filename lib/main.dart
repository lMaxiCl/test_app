import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Page(),
    );
  }
}

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  int _red=Random().nextInt(255);
  int _green=Random().nextInt(255);
  int _blue=Random().nextInt(255);

  void _changeColor() {
    setState(() {
      _red=Random().nextInt(255);
      _green=Random().nextInt(255);
      _blue=Random().nextInt(255);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, _red, _green, _blue),
      body: Container(
        child: FlatButton(
          onPressed: (){_changeColor();},
          child: Center(
            child: Text('Hey There!'),
          ),
        ),
      )
    );
  }
}
