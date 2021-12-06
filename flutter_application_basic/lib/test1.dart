// @dart=2.9
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

import 'Info.dart';

void main() async {
  //showData();
  print('object');
  print(await infoInstance());
}

void showData() async {
  startTask();
  String account = await accessData();
  fetchData(account);
}

void startTask() {
  String info1 = '요청수행 시작';
  print(info1);
}

Future<String> accessData() async {
  String account;
  await Future.delayed(Duration(seconds: 3), () {
    account = '8500만원';
  });

  return account;
}

void fetchData(String account) {
  String info3 = '잔액은 $account 입니다.';
  print(info3);
}

// This example shows how *not* to write asynchronous Dart code.

Future<void> fetchUserOrder() {
  // Imagine that this function is fetching user info from another service or database.
  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
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
