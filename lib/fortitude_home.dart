import 'package:flutter/material.dart';
import 'package:fortitude_profile/explorePage.dart';
import 'package:fortitude_profile/lessons.dart';
import 'package:fortitude_profile/profile_page.dart';
import 'assets.dart';
import 'storyBtn.dart';
import 'post.dart';
import 'pictureUpload.dart';

class FortitudeHome extends StatefulWidget {
  State<StatefulWidget> createState() => new FortitudeHomeState();
}

class FortitudeHomeState extends State<FortitudeHome> {

  int _selectedPage = 0;
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Stories'),
                  Text('Watch All'),
                ],
              ),
            ),
            Container(
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyButton(),
                  storyButton(),
                  storyButton(),
                  storyButton(),
                  storyButton(),
                  storyButton(),
                  storyButton(),
                  storyButton(),
                  storyButton(),
                ],
              ),
            ),
            post('AvatarPic.jpg', "Tessa Spence", 'tessa.jpeg',
                'Loving Life! Come join us for our launch on our brand new app'
                    'and join in on the fun! We would love to have you! #fortitudefam'),
            post('AvatarPic.jpg', "Tessa Spence", 'tessa.jpeg',
                'Loving Life! Come join us for our launch on our brand new app'
                    'and join in on the fun! We would love to have you! #fortitudefam'),
            post('AvatarPic.jpg', "Tessa Spence", 'tessa.jpeg',
                'Loving Life! Come join us for our launch on our brand new app'
                    'and join in on the fun! We would love to have you! #fortitudefam'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedPage: _selectedPage,
        onTap: onTabTapped,
      ),

    );

  }
}
