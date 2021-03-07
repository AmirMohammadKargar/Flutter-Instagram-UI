import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    Key key,
    @required this.size,
    this.image,
    this.username,
    this.location,
    this.verify,
    this.onPress,
  }) : super(key: key);

  final Size size;
  final String image, username, location;
  final bool verify;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.02, right: size.width * 0.02),
              child: CircleAvatar(
                backgroundImage: AssetImage(image),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$username",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    verify
                        ? Icon(
                            Icons.verified,
                            color: Colors.blue,
                            size: size.width * 0.035,
                          )
                        : Text(""),
                  ],
                ),
                Text("$location")
              ],
            ),
          ],
        ),
        IconButton(
            icon: Icon(
              Icons.drag_indicator_outlined,
              color: Colors.black,
            ),
            onPressed: onPress),
      ],
    );
  }
}
