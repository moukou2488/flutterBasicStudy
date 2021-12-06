// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_application_basic/Info.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp(infoInstance()));

class MyApp extends StatelessWidget {
  final Future<Info> info;
  const MyApp(this.info);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'info',
      home: Scaffold(
        body: Center(
          child: FutureBuilder<Info>(
              future: info,
              builder: (context, snapshot) {
                try {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(snapshot.data.id.toString()),
                      Text(snapshot.data.name.toString()),
                      Text(snapshot.data.money.toString()),
                    ],
                  );
                } catch (error) {
                  Text('${snapshot.error}');
                }
                return Container();
              }),
        ),
      ),
    );
  }
}

Future<Info> infoInstance() async {
  final response = await http
      .get("https://api.mockaroo.com/api/42150c80?count=1&key=220ffe10");
  print(response.body);
  if (response.statusCode == 200) {
    return Info.fromJson(json.decode(response.body));
  } else {
    throw Exception('erro');
  }
}
