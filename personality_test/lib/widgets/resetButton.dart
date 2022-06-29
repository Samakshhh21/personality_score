// ignore_for_file: sort_child_properties_last, prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, avoid_unnecessary_containers
import 'package:flutter/material.dart';

class resetButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(top: 60),
      child: ElevatedButton(
        child: Text('RESET QUIZ'),
        onPressed: null,
      ),
    );
  }
}
