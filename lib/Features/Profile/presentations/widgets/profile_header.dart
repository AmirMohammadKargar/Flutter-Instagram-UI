import 'package:Instagram/Features/Avatar/presentations/widget/profile.dart';
import 'package:Instagram/Features/Profile/presentations/widgets/text_column.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Avatar(
          size: size,
          name: "Anne",
          image: "assets/images/38.jpg",
          live: false,
          selfStory: false,
          hasName: false,
          width: size.width * 0.2,
          hasStory: true,
        ),
        TowTextColumn(
          text1: "Post",
          text2: "12",
        ),
        TowTextColumn(
          text1: "Followers",
          text2: "1.5K",
        ),
        TowTextColumn(
          text1: "Following",
          text2: "1K",
        )
      ],
    );
  }
}
