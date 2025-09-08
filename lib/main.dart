import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        //상위 바
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),

          child: AppBar(
            backgroundColor: Colors.white,
            shape: Border(
              bottom: BorderSide(color: Colors.grey.shade300, width: 1),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("웹툰", style: TextStyle(fontSize: 20)),
                    SizedBox(width: 8),
                    Text(
                      "알아서 딱!",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade500,
                      ),
                    ),
                    Icon(
                      Icons.arrow_downward,
                      size: 14,
                      color: Colors.grey.shade500,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red,
                      ),
                      child: Text(
                        "무료쿠키!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Icon(Icons.cookie),
                    SizedBox(width: 20),
                    Icon(Icons.search),
                  ],
                ),
              ],
            ),
          ),
        ),

        // 본문
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 4, 0, 4),
              child: Row(
                children: [
                  Text(
                    "지금! 인기 급상승",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 4),
                  Text("남성 TOP 30", style: TextStyle(fontSize: 15)),
                  SizedBox(width: 165),
                  Icon(Icons.keyboard_arrow_right, size: 30),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              child: SizedBox(
                height: 180,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 30,
                  itemBuilder: (BuildContext context, int index) {
                    index = index + 1;
                    return Column(
                      children: [
                        Text("$index"),
                        Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(width: 5),
                ),
              ),
              
            ),
          ],
        ),

        // 바텀 바
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.date_range), label: "웹툰"),
            BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "컷츠"),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "베스트도전"),
            BottomNavigationBarItem(icon: Icon(Icons.face), label: "My"),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "더보기"),
          ],
        ),
      ),
    );
  }
}
