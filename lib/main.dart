import 'package:flutter/material.dart';

class Player {
  String? name;
  //? => name을 가질 수도 아닐 수도 있음
  Player({required this.name});
}

void main() {
  var jw = Player(name: "jw");
  runApp(App());
}

//App widget의 build 메서드가 MaterialApp return함ㅁ
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //MaterialApp vs ios 디자인 중 선택
        home: Scaffold(
      backgroundColor: Color(0xFF181818),
      body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            ), //수평으로 40의 간격 제공
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                // 수평으로 놓고 싶을 때 Row의 mainAxis / 수직 = Row의 crossAxis
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    // 수직으로 놓고 싶을 때 Column의 mainAxis / 수평 = Column의 crossAxis
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 120,
              ),
              Text(
                "Total balance",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              Text(
                "\$5 194 482",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 20, horizontal: 50,
                      ),
                      child: Text("Transfer",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    )
                  ),
                ],
              )
            ],
          )),
    ));
  }
}
