import 'package:Instagram/core/widgets/text_button.dart';
import 'package:flutter/material.dart';

class FacebookLogin extends StatelessWidget {
  const FacebookLogin({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image(
          image: AssetImage("assets/images/f.png"),
          width: size.width * 0.06,
          color: Colors.blue,
        ),
        CustomTextButton(
          color: Colors.blue,
          text: "Log in with Facebook",
        )
      ],
    );
  }
}
