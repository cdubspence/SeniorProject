import 'package:flutter/material.dart';
import 'package:fortitude_profile/assets.dart';
import 'package:fortitude_profile/fade_animation.dart';
import 'fortitude_home.dart';
import 'explorePage.dart';
import 'lessons.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  int _selectedPage = 3;
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
      backgroundColor: Colors.teal,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: TitleBar(),
      ),
      body: Stack(
        children: <Widget> [
          CustomScrollView(
            slivers: <Widget> [
              SliverAppBar(
                expandedHeight: 400,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/tessa.jpeg'),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.teal,
                              Colors.black.withOpacity(.3)
                            ]
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget> [
                            FadeAnimation(1, Text('Tessa Spence', style:
                            TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeAnimation(1.6, Text('CEO and founder of Fortitude. I started this company because I believe that all life experiences, the good and the bad, are meant to help us and to lift others! Let us work together to make this world better!', style: TextStyle(
                          color: Colors.white, fontSize: 15,
                        ),))
                      ],
                    ),
                  )
                ]),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        selectedPage: _selectedPage,
        onTap: onTabTapped,
      ),

    );
  }
}