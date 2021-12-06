import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'meta',
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PlayWithMe'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Text('mouou'),
              Text('kouou'),
              Text('pouou'),
            ],),
        ),
    );
  }
}