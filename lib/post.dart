import 'package:flutter/material.dart';

Widget post(String userImage, String userName, String postPic, String postText) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12.0),
    child: Container(
      height: 500.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8.0),
                  width: 52.0,
                  height: 52.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                      color: Colors.deepOrangeAccent,
                      width: 2.0,
                    ),
                    image: DecorationImage(
                      image: AssetImage('images/tessa.jpeg'),
                    ),
                  ),
                ),
                Text('Tessa Spence', style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    alignment: Alignment.centerRight,
                    icon: Icon(Icons.more_horiz),
                  ),
                ),
              ],
            ),
            SizedBox( height: 10,),
            Container(
              height: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://wallpaperaccess.com/full/381417.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    // TODO make this change to red and add a number
                  },
                  color: Colors.black,
                  iconSize: 28.0,
                  icon: Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  iconSize: 28.0,
                  icon: Icon(Icons.chat_bubble_outline),
                ),
                IconButton(
                  onPressed: () {},
                  color: Colors.black,
                  iconSize: 28.0,
                  icon: Icon(Icons.send),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(userName, style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 5.0,),
                Flexible(child: Text(postText)),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}