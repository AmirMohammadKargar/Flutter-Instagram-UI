import 'package:flutter/material.dart';

class NoAccountButton extends StatelessWidget {
  const NoAccountButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: "Don't have an account?",
          style: TextStyle(color: Colors.grey[500]),
          children: <TextSpan>[
            TextSpan(
              text: " Sign up",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
