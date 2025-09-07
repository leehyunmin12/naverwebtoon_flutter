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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),

          child: AppBar(
            backgroundColor: Colors.white,
            shape: Border(
              bottom: BorderSide(color: Colors.grey.shade300, width: 1),
            ),
            title: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("웹툰", style: TextStyle(fontSize: 20)),
                SizedBox(width: 8),
                Text(
                  "알아서 딱!",
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                ),
                Icon(
                  Icons.arrow_downward,
                  size: 14,
                  color: Colors.grey.shade500,
                ),
              ],
            ),
          ),
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
