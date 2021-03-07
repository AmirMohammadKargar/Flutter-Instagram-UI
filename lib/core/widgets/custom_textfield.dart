import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
    @required this.size,
    this.text,
  }) : super(key: key);

  final Size size;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.05,
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.grey[200],
          filled: true,
          border: InputBorder.none,
          hintText: "$text",
          hintStyle: TextStyle(
            color: Colors.grey[400],
            fontSize: 13.0,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300], width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[300], width: 1.0),
          ),
        ),
      ),
    );
  }
}
