import 'package:Instagram/core/widgets/text_button.dart';
import 'package:flutter/material.dart';

class PostComment extends StatelessWidget {
  const PostComment({
    Key key,
    @required this.size,
    this.onPress,
  }) : super(key: key);

  final Size size;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        child: Align(
          alignment: Alignment.centerLeft,
          child: CustomTextButton(
            color: Colors.grey[400],
            text: "View all 30 comments",
          ),
        ),
      ),
    );
  }
}
