import 'package:easy_gradient_text/easy_gradient_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pictureUpload.dart';
import 'dart:io';

class MainTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GradientText(
      text: 'Fortitude',
      colors: [
        Colors.deepOrangeAccent,
        Colors.tealAccent,
      ],
      style: TextStyle(
        fontSize: 40.0,
      ),
    );
  }
}

Widget explorePost(File fileImage) {
  return Container(
    height: 200,
    width: 175,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: FileImage(fileImage),
        fit: BoxFit.cover,
      ),
    ),
  );
}


final pictureUpload = PictureUploadState();
class TitleBar extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: MainTitle(),
      elevation: 1.0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {

        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            pictureUpload.showPostPrompt(context);
          },
        )
      ],
    );
  }
}

class BottomNavBar extends StatelessWidget {

  const BottomNavBar({this.selectedPage = 0, this.onTap});

  final void Function(int) onTap;
  final int selectedPage;


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedPage,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.teal,
      selectedItemColor: Colors.deepOrangeAccent,
      unselectedItemColor: Colors.white,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          title: Text(''),
          icon: Icon(Icons.home, size: 40.0,),
        ),
        BottomNavigationBarItem(
          title: Text(''),
          icon: Icon(Icons.search, size: 40.0,),
        ),
        BottomNavigationBarItem(
          title: Text(''),
          icon: Icon(Icons.library_books, size: 40.0,),
        ),
        BottomNavigationBarItem(
          title: Text(''),
          icon: Icon(Icons.account_box, size: 40.0,),
        ),
      ],
    );
  }
}