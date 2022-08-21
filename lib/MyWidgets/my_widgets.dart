import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MyWidgets {

  Widget buildStories(String profileImage, String userName, Color storyBorder) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          width: 75,
          height: 75,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(profileImage), fit: BoxFit.fill),
              border: Border.all(
                color: storyBorder,
                width: 4,
              )),
        ),
        Text(userName)
      ],
    );
  }

  Widget buildHighlight(String image, String user) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(image), fit: BoxFit.fill),
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