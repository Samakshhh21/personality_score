// ignore_for_file: sort_child_properties_last, prefer_const_constructors, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:personality_test/main.dart';
import '../main.dart';

class answer extends StatelessWidget {
  final String ans;
  Function onpressed;

  answer(this.ans, this.onpressed);
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      return Container(
        width: double.infinity,
        height: 45,
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
          child: Text(
            '$ans',
            textAlign: TextAlign.left,
          ),
          onPressed: onpressed(ans),
        ),
      );
    });
  }
}
