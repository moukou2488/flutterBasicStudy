import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'counter',
      home: Scaffold(
          appBar: AppBar(title: Text('countcount!')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('$counter'),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FloatingActionButton(
                      child: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          counter++;
                        });
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    FloatingActionButton(
                      child: Icon(Icons.remove),
                      onPressed: () {
                        setState(() {
                          counter--;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
