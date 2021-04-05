import 'package:flutter/material.dart';
import 'assets.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: TitleBar(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(('Why Fortitude?'),
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text('We believe thata every person has a story. We know that everyone has experienced both good and bad things in thier life and it has helped them to become'
                  'the person they are today. Some people only seek the good experiences in life, when the bad ones can help us just as much. Our goal is to create a platform'
                  'for people to share those experiences with others who are going the same hard times in their life. This started for me when my parents got divorced when I '
                  'was young. I thought the world was over. Looking back I can see how many amazing things that have happened in my life because of that very hard time in my'
                  'life and I want to help others who are now struggling with divorce in their lives. We can help lift each other and share the gift of life experience.',
                style: TextStyle(
                  fontSize: 20,
                ),),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/tessa_pic.jpeg'),
                          fit: BoxFit.cover
                      ),
                  ),
              ),
              SizedBox(
                height: 75,
              ),
              TextButton(onPressed: () {Navigator.pop(context);},
                  child: Center(
                    child: Text('Back',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.teal,
                      ),
                    ),
              ),),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );

  }
}