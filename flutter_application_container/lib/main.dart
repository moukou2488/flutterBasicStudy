import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'container', home: Contain());
  }
}

class Contain extends StatelessWidget {
  const Contain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          child: Text('hello~!'),
          height: 100,
          width: 100,
          margin: EdgeInsets.symmetric(vertical: 80, horizontal: 20),
          padding: EdgeInsets.all(20),
          color: Colors.red,
        ),
      ),
    );
  }
}
