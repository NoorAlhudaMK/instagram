import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        leadingWidth: 5,
        title: Text("nooralhudam.k",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
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
            Icons.menu,
            size: 28,
            color: Colors.black,
          ),
          SizedBox(
            width: 5.0,
          ),
        ],
        elevation: 0,
      ),
      body: Padding(padding: EdgeInsets.only(top: 10, left: 10, right: 10,),
        child: SingleChildScrollView(
          child: Center(
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  buildGeneralInfoSection("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_4505b8A4jJRecHxa8_w-bcOZgi9sWFQH9A&usqp=CAU",
                      "Noor Alhuda M.K.", 15, 1818, 806),
                  buildPersonalInfoSection("Programmer\nFrom Baghdad\n28/06/2000\nThere is no ctrl - z in life :("),
                  buildEditSection(),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 120,
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
                  SizedBox(height: 10,),
                  buildPostsTypeSection(),
                  buildPostsSection(),
                ],
              ),
            ),
          ),
        ),
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
        currentIndex: 4,
        onTap: (index) {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  screens[index]));
        },
      ),
    );
  }

  Widget buildGeneralInfoSection(String profileImage, String userName, int posts, int followers, int following) {
    //https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_4505b8A4jJRecHxa8_w-bcOZgi9sWFQH9A&usqp=CAU
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  image: DecorationImage(
                    image: NetworkImage(profileImage),
                  )
              ),
            ),
            SizedBox(height: 5,),
            Text(userName,  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildGeneralInfoColumn(posts, "Posts"),
            SizedBox(width: 20,),
            buildGeneralInfoColumn(followers, "Followers"),
            SizedBox(width: 20,),
            buildGeneralInfoColumn(following, "Following"),
          ],
        ),
        SizedBox(width: 5,)
      ],
    );
  }

  Widget buildGeneralInfoColumn(int count, String info) {
    return Column(
      children: [
        Text("$count", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),),
        Text("$info", style: TextStyle(fontSize: 14, color: Colors.black87),),
      ],
    );
  }

  Widget buildPersonalInfoSection(String bio) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 3,),
        Text(bio, style: TextStyle(fontSize: 14, color: Colors.black87),),
      ],
    );
  }

  Widget buildEditSection() {
    return Padding(padding: EdgeInsets.only(top: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.4),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "Edit profile", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.12,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.4),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Icon(Icons.person_add_alt, size: 22, color:  Colors.black87,),
          ),
        ),
      ],
    ),);
  }

  Widget buildPostsTypeSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Icon(Ionicons.grid, color: Colors.black87, size: 26,),
            SizedBox(height: 3,),
            Container(
              width: 50,
              height: 2,
              color: Colors.black87,
            ),
          ],
        ),
        Icon(Icons.add_box_outlined, color: Colors.black87, size: 26,),
        Icon(Icons.person_add, color: Colors.black87, size: 26,)
      ],
    );
  }

  Widget buildPostsSection() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
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
