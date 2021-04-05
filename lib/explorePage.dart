import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fortitude_profile/lessons.dart';
import 'package:fortitude_profile/profile_page.dart';
import 'fortitude_home.dart';
import 'assets.dart';
import 'pictureUpload.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ExplorePage extends StatefulWidget {
  State<StatefulWidget> createState() => new ExplorePageState();
}


class ExplorePageState extends State<ExplorePage> {



  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }


  int _selectedPage = 1;
  void onTabTapped(int index) {
    _selectedPage = index;

    if (_selectedPage == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => FortitudeHome()));
    }
    else if (_selectedPage == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ExplorePage()));
    }
    else if (_selectedPage == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LessonsPage()));
    }
    else if (_selectedPage == 3) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: TitleBar(),
      ),
      body: Center(
        child: _image == null
            ? Text('No image selected.')
            : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedPage: _selectedPage,
        onTap: onTabTapped,
      ),
    );
  }
}