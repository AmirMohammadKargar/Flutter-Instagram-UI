import 'package:Instagram/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomDivider(
          size: size,
          width: size.width * 0.32,
          color: Colors.grey[300],
          height: size.height * 0.0015,
        ),
        SizedBox(
          width: size.width * 0.08,
        ),
        Text(
          "OR",
          style: TextStyle(color: Colors.grey[600]),
        ),
        SizedBox(
          width: size.width * 0.08,
        ),
        CustomDivider(
          size: size,
          width: size.width * 0.32,
          color: Colors.grey[300],
          height: size.height * 0.0015,
        ),
      ],
    );
  }
}
