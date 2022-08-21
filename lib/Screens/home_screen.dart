import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../MyWidgets/my_widgets.dart';
import 'profile_screen.dart';
import 'activity_screen.dart';
import 'explore_screen.dart';
import 'reels_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MyWidgets _widgets = MyWidgets();
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
        title: Image.asset(
          "assets/images/instagram.png",
          width: 125,
        ),
        actions: [
          Icon(
            Icons.add_box_outlined,
            size: 28,
            color: Colors.black,
          ),
          SizedBox(
            width: 20.0,
          ),
          Icon(
            Ionicons.chatbubble_ellipses_outline,
            size: 28,
            color: Colors.black,
          ),
          SizedBox(
            width: 5.0,
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    _widgets.buildStories("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_4505b8A4jJRecHxa8_w-bcOZgi9sWFQH9A&usqp=CAU", "your story", Colors.black12),
                    _widgets.buildStories("https://cdn1.iconfinder.com/data/icons/avatar-97/32/avatar-02-512.png", "__ruqaya.12", Colors.deepPurple),
                    _widgets.buildStories("https://e7.pngegg.com/pngimages/1008/377/png-clipart-computer-icons-avatar-user-profile-avatar-heroes-black-hair.png", "ali_asaad", Colors.deepPurple),
                    _widgets.buildStories("https://images.assetsdelivery.com/compings_v2/triken/triken1608/triken160800029.jpg", "mustafa_7", Colors.deepPurple),
                    _widgets.buildStories("https://thumbs.dreamstime.com/b/female-avatar-icon-flat-style-female-user-icon-cartoon-woman-vector-stock-91462850.jpg", "zahraa_mkm", Colors.deepPurple),
                    _widgets.buildStories("https://w7.pngwing.com/pngs/514/813/png-transparent-child-computer-icons-avatar-user-avatar-child-face-orange.png", "manar_mkm", Colors.deepPurple),
                    _widgets.buildStories("https://img.favpng.com/5/1/21/computer-icons-user-profile-avatar-female-png-favpng-cqykKc0Hpkh65ueWt6Nh2KFvS.jpg", "sanaa04", Colors.deepPurple),
                    _widgets.buildStories("https://cdn1.vectorstock.com/i/1000x1000/31/95/user-sign-icon-person-symbol-human-avatar-vector-12693195.jpg", "ashref_98", Colors.deepPurple),
                    _widgets.buildStories("https://www.kindpng.com/picc/m/163-1636340_user-avatar-icon-avatar-transparent-user-icon-png.png", "hind.shaker", Colors.deepPurple),
                  ],
                ),
              ],
            ),
          ),
          buildPost(
            "https://cdn1.vectorstock.com/i/1000x1000/31/95/user-sign-icon-person-symbol-human-avatar-vector-12693195.jpg",
              "ashraf_abd",
              4562,
              "assets/images/img2.png",
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            600,
          ),
          buildPost(
            "https://images.assetsdelivery.com/compings_v2/triken/triken1608/triken160800029.jpg",
            "__mustafa",
            1234,
            "assets/images/img4.png",
            "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo",
            400,
          ),
          buildPost(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_4505b8A4jJRecHxa8_w-bcOZgi9sWFQH9A&usqp=CAU",
            "nooralhudam.k",
            4884,
            "assets/images/img6.png",
            "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. ",
            800,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: ''),
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
        currentIndex: 0,
        onTap: (index) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  screens[index]));
        },
      ),
    );
  }

  Widget buildPost(String profileImage, String userName, int likes, String postImage, String caption, int comments) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  ProfilePage()));
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(profileImage),
                              fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(userName),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                  size: 26,
                )
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(postImage), fit: BoxFit.fill)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.favorite, color: Colors.red, size: 28,),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Ionicons.chatbubble_outline, size: 28,),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Ionicons.send_outline, size: 28,),
                  ],
                ),
                Icon(
                  Ionicons.bookmark_outline,
                  size: 28,
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  "$likes likes",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: Text(
                userName + " " + caption,
                style: TextStyle(color: Colors.black.withOpacity(0.8), fontSize: 14),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Text(
                    "show all comments ($comments)",
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}




















