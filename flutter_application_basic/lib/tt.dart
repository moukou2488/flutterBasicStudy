import 'package:flutter/material.dart';

void main() {
  var a = [1, 2, 3];
  var b = [3, 2, 1];
  print(sumArray(a, b));
  // Person p = Person('tome', 2);
  // //p.age = 21;
  // p.name = 'mimi';
  // final String name = 'mimi';
  // const int age = 10;

  // final time = DateTime.now();
  // //const time = DateTime.now();
  // // print('start');
  // // networkRequest();
  // // print('end');
  // print(naturalsTo(10));
  // Duck duck = Duck();
  // duck.fly();
  // duck.walk();
}

List<int> arraySum(a, b) {
  return [a[0] + b[0], a[1] + b[1], a[2] + b[2]];
}

Future networkRequest() async {
  print('network connect start');
  await Future.delayed(Duration(seconds: 3));
  print('network connect end');
}

Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}

mixin Fly on WalkableAnimal {
  final String wing = 'Big Wing';

  void fly() {
    print('fly with $wing');
    walk();
    onlyWalkableSkill();
  }
}

class WalkableAnimal {
  final String leg = 'long leg';

  void walk() {
    print('walk with $leg');
  }

  void onlyWalkableSkill() {
    print('onlyWalkableSkill');
  }
}

class Duck extends WalkableAnimal with Fly {}

class People {}

mixin Study on People {}

//class Study on People{}  에러
class Student extends People with Study {}
//class Student extends Study{} 에러

class Person {
  final int age;
  String name;

  Person(this.name, this.age);
}

List<int> sumArray(List<int> array1, List<int> array2) {
  assert(array1.length == array2.length);
  for (int idx = 0; idx < array1.length; idx++) {
    array1[idx] += array2[idx];
  }
  return array1;
}
