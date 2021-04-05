import 'package:flutter/material.dart';
import 'package:fortitude_profile/fortitude_home.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fortitude',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.black)),
        textTheme: TextTheme(headline1: TextStyle(color: Colors.black)),
      ),
      home: FortitudeHome(),
    );
  }
}