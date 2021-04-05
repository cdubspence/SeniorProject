import 'package:flutter/material.dart';
import 'assets.dart';

class GiftPage extends StatelessWidget {
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
                  Text(('What is Gift?'),
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                  ),
                ],
              ),
              Text('This is where all of the info about the gift part of the lessons will go'
              'and it will be available anytime the member would like to access it.'
                  'This is where all of the info about the gift part of the lessons will go'
                  'and it will be available anytime the member would like to access it.'
                  'This is where all of the info about the gift part of the lessons will go'
                  'and it will be available anytime the member would like to access it.'
                  'This is where all of the info about the gift part of the lessons will go'
                  'and it will be available anytime the member would like to access it.'
                  'This is where all of the info about the gift part of the lessons will go'
                  'and it will be available anytime the member would like to access it.',
              style: TextStyle(
                fontSize: 20,
              ),),
              SizedBox(
                height: 100,
              ),
              TextButton(onPressed: () {Navigator.pop(context);}, child: Center(

                child: Text('Back', style: TextStyle(fontSize: 30, color: Colors.teal),),
              ),),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );

  }
}