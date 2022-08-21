import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildAppBar(),
              SizedBox(
                height: 10,
              ),
              buildUserProfileImage(),
              SizedBox(
                height: 10,
              ),
              Text(
                "Noor Alhuda M.K.",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Baghdad",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey.shade600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildUserInfoColumn("Posts", 123),
                  buildUserInfoColumn("Followers", 1243),
                  buildUserInfoColumn("Following", 4123),
                ],
              ),
              buildPostsContainer(),
              Text(
                "index: $_index",
                style: TextStyle(
                  fontSize: 52,
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: FloatingNavbar(
      //   onTap: (int val) => setState(() => _index = val),
      //   currentIndex: _index,
      //   items: [
      //     FloatingNavbarItem(icon: Icons.home, title: 'Home'),
      //     FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
      //     FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
      //     FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
      //   ],
      // ),
    );
  }

  Widget buildAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.arrow_back_ios_outlined,
        ),
        Icon(
          Icons.notifications_active,
        ),
      ],
    );
  }

  Widget buildUserProfileImage() {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: 18,
              spreadRadius: 10,
              color: Colors.grey,
            ),
          ],
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://thumbs.dreamstime.com/b/female-avatar-icon-flat-style-female-user-icon-cartoon-woman-vector-stock-91462850.jpg"))),
    );
  }

  Widget buildUserInfoColumn(String info, int count) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "$count",
          style: TextStyle( fontSize: 18),
        ),
        Text(
          info,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }

  Widget buildPostsContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: MediaQuery.of(context).size.height * 0.34,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: [
          buildPost(
              "https://img.rawpixel.com/private/static/images/website/2022-05/fl12929410165-image-kybeoc61.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=8d6e7f2dee775c830a74c4e0af9f0460"),
          buildPost(
              "https://img.rawpixel.com/private/static/images/website/2022-05/fl12929410165-image-kybeoc61.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=8d6e7f2dee775c830a74c4e0af9f0460"),
          buildPost(
              "https://img.rawpixel.com/private/static/images/website/2022-05/fl12929410165-image-kybeoc61.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=8d6e7f2dee775c830a74c4e0af9f0460"),
          buildPost(
              "https://img.rawpixel.com/private/static/images/website/2022-05/fl12929410165-image-kybeoc61.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=8d6e7f2dee775c830a74c4e0af9f0460"),
          buildPost(
              "https://img.rawpixel.com/private/static/images/website/2022-05/fl12929410165-image-kybeoc61.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=8d6e7f2dee775c830a74c4e0af9f0460"),
          buildPost(
              "https://img.rawpixel.com/private/static/images/website/2022-05/fl12929410165-image-kybeoc61.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=8d6e7f2dee775c830a74c4e0af9f0460"),
          buildPost(
              "https://img.rawpixel.com/private/static/images/website/2022-05/fl12929410165-image-kybeoc61.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=8d6e7f2dee775c830a74c4e0af9f0460"),
          buildPost(
              "https://img.rawpixel.com/private/static/images/website/2022-05/fl12929410165-image-kybeoc61.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=8d6e7f2dee775c830a74c4e0af9f0460"),
        ],
      ),
    );
  }

  Widget buildPost(String url) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(image: NetworkImage(url), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
