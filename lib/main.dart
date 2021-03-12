import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trainer_clone/trainer_widget/image_widget/image_widget.dart';

import 'package:trainer_clone/trainer_widget/trainer_profile_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF1d98cb),
            fontSize: 18,
          ),
          headline2: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF1d98cb),
            fontSize: 15,
          ),
          headline3: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF6c4791),
            fontSize: 15,
          ),
          bodyText1: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.black,
            fontSize: 14,
          ),
          bodyText2: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ),
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.hardEdge,
          children: <Widget>[
            Container(
              //color: Colors.black,
              width: 390.0,
              child: ImageWidget(),
            ),

            Container(
              margin: EdgeInsets.only(top: 230.0),
              child: SingleChildScrollView(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Container(
                    padding: EdgeInsets.only(top: 18.0),
                    color: Colors.white,
                    child: TrainerDetailedProfile(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(child: TrainerDetailedProfile()),
      ),
    );
  }
}
