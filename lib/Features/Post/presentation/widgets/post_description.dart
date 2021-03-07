import 'package:flutter/material.dart';

class PostDescription extends StatelessWidget {
  const PostDescription({
    Key key,
    @required this.size,
    this.onPress,
    this.text,
  }) : super(key: key);

  final Size size;
  final Function onPress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "$text",
            style: TextStyle(
              fontSize: 13.0,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
      ),
    );
  }
}
