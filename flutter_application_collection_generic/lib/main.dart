import 'package:flutter/material.dart';

int addNumber(int a, int b) {
  return a + b;
}

void main(List<String> args) {
  var number = []; // var로 변수 타입을 지정 했기 때문에 참조 객체에 따라 타입이 지정
  // number 변수는 List<dynamic> 으로 되어있는데 List 안에 다양한 타입이 들어갈 수 있는 상태이기 때문
  number.add(1);
  number.add('value');
  number.add(7.2);
  number.add(addNumber(2, 3));
  number.add(true);

  print(number);

  List<String> text = [];
  //text.add(1); //generic지정으로 인해 불가
  text.add('jpjp'); //가능
  print(names());
}

List<String> names() {
  List<String> catNames = [];
  catNames.addAll(['hohoe', 'hihipi', 'pong']);
  return catNames;
}

class Circle {

}

class Square{

}

class Slot<T>{
  insert(T shape){}
}

void main(){
var circleSlot = new Slot<Circle>();
circleSlot.insert(new Circle());
var squareSlot = new Slot<Square>();
squareSlot.insert(new Square()); 
}