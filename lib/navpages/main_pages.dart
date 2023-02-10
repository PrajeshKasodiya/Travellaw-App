import 'package:flutter/material.dart';

import 'package:skyscanner/navpages/bar_item_page.dart';
import 'package:skyscanner/navpages/my_page.dart';
import 'package:skyscanner/navpages/navhome_page.dart';
import 'package:skyscanner/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = const [
    NavHomePage(),
    BaritemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          unselectedFontSize: 0,
          selectedFontSize: 20,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Bar", icon: Icon(Icons.apps)),
            BottomNavigationBarItem(label: "Event", icon: Icon(Icons.event_note)),
            BottomNavigationBarItem(label: "My", icon: Icon(Icons.person))
          ]),
    );
  }
}
