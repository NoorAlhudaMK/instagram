import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'profile_screen.dart';
import 'activity_screen.dart';
import 'home_screen.dart';
import 'reels_screen.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 5,
        title: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 35,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 5,),
              Icon(Icons.search, size: 24, color: Colors.black38,),
              SizedBox(width: 5,),
              Text("Search", style: TextStyle(fontSize: 15, color: Colors.black38,),)
            ],
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: buildPostsSection(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
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
        currentIndex: 1,
        onTap: (index) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  screens[index]));
        },
      ),
    );
  }

  Widget buildPostsSection() {
    return Padding(padding: EdgeInsets.only(left: 5, right: 5), child: StaggeredGrid.count(
      crossAxisCount: 3,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children:  [
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img1.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img3.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 2,
          child: buildPost("assets/images/img4.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img5.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img6.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img7.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img8.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img9.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img1.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img7.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img8.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img9.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img7.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img8.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img9.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img1.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img3.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img4.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img5.png"),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 1,
          mainAxisCellCount: 1,
          child: buildPost("assets/images/img6.png"),
        ),
      ],
    ),);
  }

  Widget buildPost(String image) {
    return  Container(
      height: 100,
      width: MediaQuery.of(context).size.width * 0.28,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            image,
          ),
        ),
        color: Colors.grey,
      ),
    );
  }
}