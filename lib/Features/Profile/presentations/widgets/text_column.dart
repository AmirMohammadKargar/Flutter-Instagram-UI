import 'package:flutter/material.dart';

class TowTextColumn extends StatelessWidget {
  const TowTextColumn({
    Key key,
    this.text1,
    this.text2,
  }) : super(key: key);
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "$text2",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        Text(
          "$text1",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
