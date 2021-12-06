import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}
class MyPage extends StatelessWidget {
  const MyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
        icon : Icon(Icons.menu), 
        onPressed: () {
          print('menu clicked~~~~~~~~~~~!');
          },
        ),
        actions: <Widget>[
          IconButton(onPressed: (){
            print('장바구니로 이동');
          }, icon: Icon(Icons.shopping_cart)
          ),
          IconButton(onPressed: (){
            print('검색 클릭');
          }, icon: Icon(Icons.search))
        ],
      ),
    );
  }
}