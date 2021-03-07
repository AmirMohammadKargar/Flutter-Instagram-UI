import 'package:flutter/material.dart';

class SwtichButton extends StatelessWidget {
  const SwtichButton({
    Key key,
    @required this.size,
    this.isActive,
    this.icon,
    this.onPress,
  }) : super(key: key);

  final Size size;
  final bool isActive;
  final IconData icon;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: size.width * 0.5,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isActive ? Colors.black : Colors.grey[400],
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.01,
          ),
          child: Icon(
            icon,
            color: isActive ? Colors.black : Colors.grey[400],
          ),
        ),
      ),
    );
  }
}
