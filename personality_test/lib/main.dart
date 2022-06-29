import 'package:flutter/material.dart';
import 'package:personality_test/widgets/question.dart';
import 'package:personality_test/widgets/resetButton.dart';
import './widgets/question.dart';
import 'widgets/answer.dart';

// ignore_for_file: sort_child_properties_last, prefer_const_constructors, use_key_in_widget_constructors, camel_case_types
void main() {
  runApp(homePage());
}

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _homePageState();
  }
}

class _homePageState extends State<homePage> {
  var question_ind = 0;
  var total = 0;
  VoidCallback change(String s) {
    setState(() {
      question_ind = question_ind + 1;
      total += mp[s];
    });
    print(total);
  }

  var mp = {
    'Black': 10,
    'Blue': 8,
    'Green': 7,
    'Red': 9,
    'Tennis': 6,
    'Cricket': 9,
    'Football': 9,
    'Badminton': 8,
    'hero': 6,
    'Samaksh': 10,
    'Rock': 9,
    'Jacky chan': 10,
    'Banana': 8,
    'Orange': 5,
    'Mango': 8,
    'Apple': 9,
  };
  var viewsque = [
    'What is your favourite Colour ?',
    'What is your favourite Sports ?',
    'What is your favourite Actor ?',
    'What is your favourite Fruit ?',
  ];
  var viewans = [
    ['Black', 'Blue', 'Green', 'Red'],
    ['Tennis', 'Cricket', 'Football', 'Badminton'],
    ['hero', 'Samaksh', 'Rock', 'Jacky chan'],
    ['Banana', 'Orange', 'Mango', 'Apple'],
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personality Score"),
        ),
        body: Column(
          children: [
            if (question_ind <= 3) question(viewsque[question_ind]),
            if (question_ind <= 3) answer(viewans[question_ind][0], change),
            if (question_ind <= 3) answer(viewans[question_ind][1], change),
            if (question_ind <= 3) answer(viewans[question_ind][2], change),
            if (question_ind <= 3) answer(viewans[question_ind][3], change),
            
          ],
        ),
      ),
    );
  }
}
