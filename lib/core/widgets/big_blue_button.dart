import 'package:flutter/material.dart';

class BigBlueButton extends StatelessWidget {
  const BigBlueButton({
    Key key,
    @required this.size,
    this.text,
    this.onPress,
  }) : super(key: key);

  final Size size;
  final String text;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Colors.black,
      color: Colors.blue,
      borderRadius: BorderRadius.circular(size.width * 0.01),
      child: InkWell(
        onTap: () {
          onPress();
        },
        child: Container(
          alignment: Alignment.center,
          height: size.height * 0.05,
          child: Text(
            "$text",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
