import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'navigator', home: First());
  }
}

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: TextButton(
          child: Text('go Second'),
          onPressed: () {
            Navigator.push(ctx, MaterialPageRoute(builder: (_) => Second()));
          },
        ),
      ),
    );
  }
}

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('object1');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('object3');
  }

  @override
  Widget build(BuildContext context) {
    print('object2');
    return Scaffold(
      appBar: AppBar(
        title: Text('Second'),
      ),
      body: Center(
        child: TextButton(
          child: Text('go first'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
