import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

//App widget의 build 메서드가 MaterialApp return함ㅁ
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //MaterialApp vs ios 디자인 중 선택
      home: Scaffold(
          appBar: AppBar(
            elevation: 10,
            title: Text("hello flutter"),
          ),
          body: Center(
            child: Text("hello world"),
          )),
    );
  }
}
