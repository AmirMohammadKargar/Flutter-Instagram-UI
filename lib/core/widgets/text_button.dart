import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key key,
    this.text,
    this.color,
    this.onPress,
    this.fontSize,
  }) : super(key: key);
  final String text;
  final Color color;
  final Function onPress;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Text(
        "$text",
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: fontSize ?? 13.0,
        ),
      ),
    );
  }
}
