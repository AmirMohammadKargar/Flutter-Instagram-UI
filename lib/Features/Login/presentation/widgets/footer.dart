import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
          text: TextSpan(
              text: "Instagram",
              style: TextStyle(color: Colors.grey[500]),
              children: <TextSpan>[
            TextSpan(
                text: " OT ",
                style: TextStyle(
                  fontSize: 10.0,
                )),
            TextSpan(text: "FaceBook")
          ])),
    );
  }
}
