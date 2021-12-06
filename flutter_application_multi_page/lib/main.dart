import 'package:flutter/material.dart';
import 'package:flutter_application_multi_page/ScreenA.dart';
import 'package:flutter_application_multi_page/ScreenB.dart';
import 'package:flutter_application_multi_page/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'multipage',
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC()
      },
    );
  }
}
