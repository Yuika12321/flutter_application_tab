import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

void main() {
  // 진입점
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          // padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          height: double.infinity,
          child: ContainedTabBarView(
            tabBarProperties: TabBarProperties(
              height: 40.0,
              indicatorColor: Colors.black,
              indicatorWeight: 2.0,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey[400],
            ),
            tabs: const [
              Text('오늘의 급식'),
              Text('평가하기'),
              Text('결과보기'),
            ],
            views: [
              Container(child: const Text('오늘메뉴')),
              Container(child: const Text('별점주기')),
              Container(child: const Text('차트, 평점')),
            ],
            initialIndex: 0,
            onChange: (p0) {
              print(p0);
            },
          ),
        ),
      ),
    );
  }
}
