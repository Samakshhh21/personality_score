// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class question extends StatelessWidget {
  final String ques;
  question(this.ques,){}
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      alignment: Alignment.topLeft,
      child: Text(
        "$ques",
        textScaleFactor: 1.3,
      ),
    );
  }
}
