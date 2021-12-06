import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'meta',
      theme: ThemeData(
        primarySwatch: Colors.pink
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
      appBar: AppBar(title: Text('pinkapp'),),
      body: Center(child: Column(
        children: <Widget>[
          Text('mu'),
          Text('ouou'),
          Text('pupu')
        ],
      ),),
    );
  }
}