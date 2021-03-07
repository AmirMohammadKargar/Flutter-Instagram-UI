import 'package:Instagram/Features/Avatar/presentations/widget/profile.dart';
import 'package:Instagram/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem({
    Key key,
    @required this.size,
    this.image,
    this.username,
    this.text,
    this.onPress,
  }) : super(key: key);

  final Size size;
  final String image, username, text;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Avatar(
              size: size,
              image: image,
              live: false,
              selfStory: false,
              hasName: false,
              hasStory: true,
              width: size.width * 0.13,
            ),
            SizedBox(
              width: size.width * 0.02,
            ),
            Container(
              width: size.width * 0.4,
              child: RichText(
                overflow: TextOverflow.clip,
                text: TextSpan(
                  text: "$username, ",
                  children: <TextSpan>[
                    TextSpan(
                      text: text,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    )
                  ],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        CustomButton(
          size: size,
          text: "Follow",
          isIcon: false,
          icon: null,
          onPress: onPress,
          color: Colors.blue,
          textColor: Colors.white,
          border: false,
        )
      ],
    );
  }
}
