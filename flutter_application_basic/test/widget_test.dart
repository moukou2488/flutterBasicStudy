import 'dart:io';

void main() {
  showData();
}

void showData() {
  startTask();
  accessData();
  fetchData();
}

void startTask() {
  String info1 = '요청수행 시작';
  print(info1);
}

void accessData() {
  Duration time = Duration(seconds: 3);
  if (time.inSeconds > 2) {
    Future.delayed(time, () {
      String info2 = '데이터에 접속 중';
      print(info2);
    });
  } else {
    print('데이터를 가져왔습니다.');
  }
}

void fetchData() {
  String info3 = '잔액은 8500만원 입니다.';
  print(info3);
}
