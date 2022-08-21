import 'package:flutter/material.dart';

import '../../MyWidgets/my_widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  MyWidgets _widgets = MyWidgets();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage("assets/images/img3.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 10, right: 10,), child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(Icons.arrow_back, size: 30, color: Colors.white,),
                            Icon(Icons.more_horiz, size: 30, color: Colors.white,)
                          ],
                        ),)
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: CircleAvatar(
                          radius: 55.0,
                          backgroundImage: AssetImage('assets/images/img3.png'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ]),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Noor Alhuda M.K.",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Baghdad - Iraq",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        child: Icon(
                          Icons.mail_outline,
                          color: Colors.blue,
                          size: 22,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.7),
                                blurRadius: 8.0,
                                offset: Offset(0.0, 0.75),
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            )),
                        child: Icon(
                          Icons.share,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 20,),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildUserInfoColumn(870, "Following"),
                      Container(
                        width: 1,
                        height: 40,
                        color: Colors.grey,
                      ),
                      buildUserInfoColumn(120, "Followers"),
                      Container(
                        width: 1,
                        height: 40,
                        color: Colors.grey,
                      ),
                      buildUserInfoColumn(300, "Likes"),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 8,
                    color: Colors.grey.shade200,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Followers",
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            _widgets.buildHighlight("https://cdn1.iconfinder.com/data/icons/avatar-97/32/avatar-02-512.png", "__ruqaya.12"),
                            _widgets.buildHighlight("https://e7.pngegg.com/pngimages/1008/377/png-clipart-computer-icons-avatar-user-profile-avatar-heroes-black-hair.png", "ali_asaad",),
                            _widgets.buildHighlight("https://images.assetsdelivery.com/compings_v2/triken/triken1608/triken160800029.jpg", "mustafa_7"),
                            _widgets.buildHighlight("https://thumbs.dreamstime.com/b/female-avatar-icon-flat-style-female-user-icon-cartoon-woman-vector-stock-91462850.jpg", "zahraa_mkm"),
                            _widgets.buildHighlight("https://w7.pngwing.com/pngs/514/813/png-transparent-child-computer-icons-avatar-user-avatar-child-face-orange.png", "manar_mkm"),
                            _widgets.buildHighlight("https://img.favpng.com/5/1/21/computer-icons-user-profile-avatar-female-png-favpng-cqykKc0Hpkh65ueWt6Nh2KFvS.jpg", "sanaa04"),
                            _widgets.buildHighlight("https://cdn1.vectorstock.com/i/1000x1000/31/95/user-sign-icon-person-symbol-human-avatar-vector-12693195.jpg", "ashref_98"),
                            _widgets.buildHighlight("https://www.kindpng.com/picc/m/163-1636340_user-avatar-icon-avatar-transparent-user-icon-png.png", "hind.shaker"),
                            _widgets.buildHighlight("https://thumbs.dreamstime.com/b/female-avatar-icon-flat-style-female-user-icon-cartoon-woman-vector-stock-91462850.jpg", "zahraa_mkm"),
                            _widgets.buildHighlight("https://w7.pngwing.com/pngs/514/813/png-transparent-child-computer-icons-avatar-user-avatar-child-face-orange.png", "manar_mkm"),
                            _widgets.buildHighlight("https://img.favpng.com/5/1/21/computer-icons-user-profile-avatar-female-png-favpng-cqykKc0Hpkh65ueWt6Nh2KFvS.jpg", "sanaa04"),
                            _widgets.buildHighlight("https://cdn1.vectorstock.com/i/1000x1000/31/95/user-sign-icon-person-symbol-human-avatar-vector-12693195.jpg", "ashref_98"),
                            _widgets.buildHighlight("https://www.kindpng.com/picc/m/163-1636340_user-avatar-icon-avatar-transparent-user-icon-png.png", "hind.shaker"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 8,
                    color: Colors.grey.shade200,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "Posts",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  buildPostsSection(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: ''),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(
          size: 30,
        ),
        unselectedIconTheme: IconThemeData(
          size: 24,
        ),
      ),
    );
  }

  Widget buildUserInfoColumn(int count, String info) {
    return Column(
      children: [
        Text(
          "$count",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        Text(
          info,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }

  Widget buildPostsSection() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35 ,
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: [
          buildPost("assets/images/img1.png"),
          buildPost("assets/images/img2.png"),
          buildPost("assets/images/img3.png"),
          buildPost("assets/images/img4.png"),
          buildPost("assets/images/img5.png"),
          buildPost("assets/images/img6.png"),
          buildPost("assets/images/img7.png"),
          buildPost("assets/images/img8.png"),
          buildPost("assets/images/img9.png"),
        ],
      ),
    );
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
/// ........................................................................ ///

/*
import 'package:flutter/material.dart';

import '../MyWidgets/my_widgets.dart';
import 'activity_screen.dart';
import 'explore_screen.dart';
import 'home_screen.dart';
import 'reels_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;
  List<Widget> screens = [
    HomePage(),
    ExplorePage(),
    ReelsPage(),
    ActivityPage(),
    ProfilePage(),
  ];
  MyWidgets _widgets = MyWidgets();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage("assets/images/img3.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.only(left: 10, right: 10,), child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(Icons.arrow_back, size: 30, color: Colors.white,),
                            Icon(Icons.more_horiz, size: 30, color: Colors.white,)
                          ],
                        ),)
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: CircleAvatar(
                          radius: 55.0,
                          backgroundImage: AssetImage('assets/images/img3.png'),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ]),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Noor Alhuda M.K.",
                      style: TextStyle(color: Colors.black, fontSize: 24),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Baghdad - Iraq",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 20,),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        child: Icon(
                          Icons.mail_outline,
                          color: Colors.blue,
                          size: 22,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          height: 55,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.7),
                                blurRadius: 8.0,
                                offset: Offset(0.0, 0.75),
                              ),
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            )),
                        child: Icon(
                          Icons.share,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 20,),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildUserInfoColumn(870, "Following"),
                      Container(
                        width: 1,
                        height: 40,
                        color: Colors.grey,
                      ),
                      buildUserInfoColumn(120, "Followers"),
                      Container(
                        width: 1,
                        height: 40,
                        color: Colors.grey,
                      ),
                      buildUserInfoColumn(300, "Likes"),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 8,
                    color: Colors.grey.shade200,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Followers",
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            _widgets.buildHighlight("https://cdn1.iconfinder.com/data/icons/avatar-97/32/avatar-02-512.png", "__ruqaya.12"),
                            _widgets.buildHighlight("https://e7.pngegg.com/pngimages/1008/377/png-clipart-computer-icons-avatar-user-profile-avatar-heroes-black-hair.png", "ali_asaad",),
                            _widgets.buildHighlight("https://images.assetsdelivery.com/compings_v2/triken/triken1608/triken160800029.jpg", "mustafa_7"),
                            _widgets.buildHighlight("https://thumbs.dreamstime.com/b/female-avatar-icon-flat-style-female-user-icon-cartoon-woman-vector-stock-91462850.jpg", "zahraa_mkm"),
                            _widgets.buildHighlight("https://w7.pngwing.com/pngs/514/813/png-transparent-child-computer-icons-avatar-user-avatar-child-face-orange.png", "manar_mkm"),
                            _widgets.buildHighlight("https://img.favpng.com/5/1/21/computer-icons-user-profile-avatar-female-png-favpng-cqykKc0Hpkh65ueWt6Nh2KFvS.jpg", "sanaa04"),
                            _widgets.buildHighlight("https://cdn1.vectorstock.com/i/1000x1000/31/95/user-sign-icon-person-symbol-human-avatar-vector-12693195.jpg", "ashref_98"),
                            _widgets.buildHighlight("https://www.kindpng.com/picc/m/163-1636340_user-avatar-icon-avatar-transparent-user-icon-png.png", "hind.shaker"),
                            _widgets.buildHighlight("https://thumbs.dreamstime.com/b/female-avatar-icon-flat-style-female-user-icon-cartoon-woman-vector-stock-91462850.jpg", "zahraa_mkm"),
                            _widgets.buildHighlight("https://w7.pngwing.com/pngs/514/813/png-transparent-child-computer-icons-avatar-user-avatar-child-face-orange.png", "manar_mkm"),
                            _widgets.buildHighlight("https://img.favpng.com/5/1/21/computer-icons-user-profile-avatar-female-png-favpng-cqykKc0Hpkh65ueWt6Nh2KFvS.jpg", "sanaa04"),
                            _widgets.buildHighlight("https://cdn1.vectorstock.com/i/1000x1000/31/95/user-sign-icon-person-symbol-human-avatar-vector-12693195.jpg", "ashref_98"),
                            _widgets.buildHighlight("https://www.kindpng.com/picc/m/163-1636340_user-avatar-icon-avatar-transparent-user-icon-png.png", "hind.shaker"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 8,
                    color: Colors.grey.shade200,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "Posts",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  buildPostsSection(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.circle), label: ''),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(
          size: 30,
        ),
        unselectedIconTheme: IconThemeData(
          size: 24,
        ),
        currentIndex: 4,
        onTap: (index) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  screens[index]));
        },
      ),
    );
  }

  Widget buildUserInfoColumn(int count, String info) {
    return Column(
      children: [
        Text(
          "$count",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        Text(
          info,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    );
  }

  Widget buildPostsSection() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35 ,
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: [
          buildPost("assets/images/img1.png"),
          buildPost("assets/images/img2.png"),
          buildPost("assets/images/img3.png"),
          buildPost("assets/images/img4.png"),
          buildPost("assets/images/img5.png"),
          buildPost("assets/images/img6.png"),
          buildPost("assets/images/img7.png"),
          buildPost("assets/images/img8.png"),
          buildPost("assets/images/img9.png"),
        ],
      ),
    );
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
 */