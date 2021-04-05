import 'package:flutter/material.dart';

Widget storyButton() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 12.0),
    child: Column(
      children: [
        Container(
          width: 64.0,
          height: 64.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(
              color: Colors.deepOrangeAccent,
              width: 2.0,
            ),
            image: DecorationImage(
              image: AssetImage('images/AvatarPic.jpg')
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text('UserName',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w500,
        ),
        ),
      ],
    ),
  );
}