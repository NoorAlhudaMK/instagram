import 'package:flutter/material.dart';

class InstagramScreen extends StatefulWidget {
  const InstagramScreen({Key? key}) : super(key: key);

  @override
  State<InstagramScreen> createState() => _InstagramScreenState();
}

class _InstagramScreenState extends State<InstagramScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          "assets/instagram.png",
          width: 125,
        ),
        actions: [
          Icon(
            Icons.add_box_outlined,
            size: 28,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.mail_outline_sharp,
            size: 28,
            color: Colors.black,
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    buildStories(),
                    buildStories(),
                    buildStories(),
                    buildStories(),
                    buildStories(),
                    buildStories(),
                    buildStories(),
                    buildStories(),
                    buildStories(),
                  ],
                ),
              ],
            ),
          ),
          buildPost(),
          buildPost(),
          buildPost(),
          buildPost(),
        ],
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

  Widget buildStories() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('assets/img4.png'), fit: BoxFit.fill),
              border: Border.all(
                color: Colors.purple,
                width: 3,
              )),
        ),
        Text("noormk")
      ],
    );
  }

  Widget buildPost() {
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
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/img1.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("noor"),
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
                      image: AssetImage('assets/img9.png'), fit: BoxFit.fill)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/black_heart.png",
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/chat.png",
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/send.png",
                      width: 25,
                      height: 25,
                    ),
                  ],
                ),
                SizedBox(
                  width: 190,
                ),
                Icon(
                  Icons.flag_outlined,
                  size: 30,
                ),
                // Image.asset(
                //   "assets/black_heart.png",
                //   width: 25,
                //   height: 25,
                // ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "1,643 likes",
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
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(color: Colors.black54, fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
