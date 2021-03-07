import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.size,
    this.text,
    this.icon,
    this.onPress,
    this.isIcon,
    this.width,
    this.color,
    this.textColor,
    this.border,
  }) : super(key: key);

  final Size size;
  final String text;
  final IconData icon;
  final Function onPress;
  final bool isIcon, border;
  final double width;
  final Color color, textColor;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.5,
      color: color ?? Colors.white,
      borderRadius: BorderRadius.circular(
        size.width * 0.02,
      ),
      child: InkWell(
        onTap: onPress,
        child: Container(
          width: width,
          decoration: BoxDecoration(
            border: Border.all(
              color: border ? Colors.grey[400] : Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(
              size.width * 0.02,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.03,
              vertical: size.height * 0.008,
            ),
            child: Row(
              mainAxisAlignment: isIcon
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
              children: <Widget>[
                isIcon
                    ? Icon(
                        icon,
                        size: size.width * 0.055,
                      )
                    : Text(''),
                Text(
                  "$text",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    color: textColor ?? Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
