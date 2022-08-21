import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

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
                      Column(
                        children: const [
                          Text(
                            "870",
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                      Container(
                        width: 1,
                        height: 40,
                        color: Colors.grey,
                      ),
                      Column(
                        children: const [
                          Text(
                            "120k",
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
                      Container(
                        width: 1,
                        height: 40,
                        color: Colors.grey,
                      ),
                      Column(
                        children: const [
                          Text(
                            "300k",
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          ),
                          Text(
                            "Likes",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ],
                      ),
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
                            buildStories('assets/img_5.png',"zahraaMKM"),
                            buildStories('assets/img_1.png', "shahRokh"),
                            buildStories('assets/img_4.png', "manarMKM"),
                            buildStories('assets/logo.png', "dnaScholarship"),
                            buildStories('assets/img_5.png',"zahraaMKM"),
                            buildStories('assets/img_1.png', "shahRokh"),
                            buildStories('assets/img_4.png', "manarMKM"),
                            buildStories('assets/logo.png', "dnaScholarship"),
                            buildStories('assets/img_5.png',"zahraaMKM"),
                            buildStories('assets/img_1.png', "shahRokh"),
                            buildStories('assets/img_4.png', "manarMKM"),
                            buildStories('assets/logo.png', "dnaScholarship"),
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
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 15.0,
                      bottom: 20.0,
                      top: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.28,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/img1.png",
                              ),
                            ),
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.28,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/img1.png",
                              ),
                            ),
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.28,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/img1.png",
                              ),
                            ),
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStories(String image, String user) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.fill),
             ),
        ),
        Text(user, style: TextStyle(
          fontSize: 8,
          fontWeight: FontWeight.w600,
          color: Colors.black54
        ),)
      ],
    );
  }

}

/*
Column(
          mainAxisAlignment: MainAxisAlignment.end,

          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.85,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Noor Alhuda M.K.",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  Text(
                    "Baghdad - Iraq",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(color: Colors.black54, fontSize: 16, ), textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.all(5.0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            )
                        ),
                        child: Icon(Icons.mail_outline, color: Colors.blue,),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 160,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(40),
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
                            )
                        ),
                        child: Icon(Icons.share, color: Colors.blue,),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "870",
                            style: TextStyle(color: Colors.black, fontSize: 24),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      ),
                      Container(width: 2, height: 80, color: Colors.grey,),
                      Column(
                        children: [
                          Text(
                            "870",
                            style: TextStyle(color: Colors.black, fontSize: 24),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      ),
                      Container(width: 2, height: 80, color: Colors.grey,),
                      Column(
                        children: [
                          Text(
                            "870",
                            style: TextStyle(color: Colors.black, fontSize: 24),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(width: MediaQuery.of(context).size.width, height: 20, color: Colors.grey.shade200,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Followers",
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ),
                      Text(
                        "view all",
                        style: TextStyle(color: Colors.blue, fontSize: 16, ), textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 120,
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
                  Container(width: MediaQuery.of(context).size.width, height: 20, color: Colors.grey.shade200,),
                  Text("Posts",  style: TextStyle(color: Colors.black54, fontSize: 16),),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 15.0,
                      bottom: 20.0,
                      top: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.28,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/img1.png",
                              ),
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.28,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/img1.png",
                              ),
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          height: 100,
                          width: MediaQuery.of(context).size.width * 0.28,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/img1.png",
                              ),
                            ),
                            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                  // SizedBox(
                  //   width: 400,
                  // child: ListView(
                  //   scrollDirection: Axis.vertical,
                  //   children: [
                  //     buildPost(),
                  //     buildPost(),
                  //     buildPost(),
                  //     buildPost(),
                  //   ],
                  // ),)

                ],
              ),
            ),
          ],
        )
 */
