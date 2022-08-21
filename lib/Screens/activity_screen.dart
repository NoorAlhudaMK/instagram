import 'package:flutter/material.dart';

import 'profile_screen.dart';
import 'explore_screen.dart';
import 'home_screen.dart';
import 'reels_screen.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomePage(),
    ExplorePage(),
    ReelsPage(),
    ActivityPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/under_construction.png"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(icon: CircleAvatar(radius: 10, child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_4505b8A4jJRecHxa8_w-bcOZgi9sWFQH9A&usqp=CAU"),), label: ''),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(
          size: 30,
        ),
        unselectedIconTheme: IconThemeData(
          size: 24,
        ),
        currentIndex: 3,
        onTap: (index) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  screens[index]));
        },
      ),
    );
  }
}
