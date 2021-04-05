import 'package:flutter/material.dart';
import 'explorePage.dart';
import 'fortitude_home.dart';
import 'profile_page.dart';
import 'assets.dart';
import 'gift.dart';
import 'shift.dart';
import 'lift.dart';
import 'intro.dart';

class LessonsPage extends StatefulWidget {
  State<StatefulWidget> createState() => new LessonPageState();
}

class LessonPageState extends State<LessonsPage> {



  int _selectedPage = 2;
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
      body: Column(
        children: [
          SizedBox(
            height: 75,
          ),
          Center(
            child: GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => IntroPage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.teal.shade300,
                ),
                height: 100,
                width: 200,
                child: Center(child: Text('Introduction',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => GiftPage()));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.deepOrange.shade300,
                ),
                height: 100,
                width: 200,
                child: Center(child: Text('Gift',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ShiftPage()));},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.teal.shade300,
                ),
                height: 100,
                width: 200,
                child: Center(child: Text('Shift',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LiftPage()));},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.deepOrange.shade300,
                ),
                height: 100,
                width: 200,
                child: Center(child: Text('Lift',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                ),
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavBar(
        selectedPage: _selectedPage,
        onTap: onTabTapped,
      ),

    );
  }
}