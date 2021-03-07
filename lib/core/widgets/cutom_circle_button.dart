import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key key,
    @required this.size,
    this.text,
    this.icon,
  }) : super(key: key);

  final Size size;
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Material(
          child: InkWell(
            onTap: () {},
            child: Container(
              width: size.width * 0.15,
              height: size.width * 0.15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              child: Icon(
                icon,
                size: size.width * 0.08,
              ),
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.005,
        ),
        Text("$text")
      ],
    );
  }
}
