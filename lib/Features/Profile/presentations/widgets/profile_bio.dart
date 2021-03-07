import 'package:flutter/material.dart';

class ProfileBio extends StatelessWidget {
  const ProfileBio({
    Key key,
    this.username,
    this.text,
  }) : super(key: key);

  final String username, text;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.start,
      text: TextSpan(
        text: "$username\n",
        children: <TextSpan>[
          TextSpan(
            text: text,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15.0,
              height: 1.3,
            ),
          ),
        ],
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          height: 1.4,
        ),
      ),
    );
  }
}
