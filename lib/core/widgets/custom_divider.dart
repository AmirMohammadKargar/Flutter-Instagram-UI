import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key key,
    @required this.size,
    this.width,
    this.height,
    this.color,
  }) : super(key: key);

  final Size size;
  final double width;
  final double height;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: color,
      height: height,
    );
  }
}
