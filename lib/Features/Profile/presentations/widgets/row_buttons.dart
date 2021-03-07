import 'package:Instagram/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          size: size,
          text: "Edit Profile",
          icon: null,
          isIcon: false,
          onPress: () {},
          width: size.width * 0.46,
          border: true,
        ),
        CustomButton(
          size: size,
          text: "Saved",
          icon: null,
          isIcon: false,
          onPress: () {},
          width: size.width * 0.46,
          border: true,
        ),
      ],
    );
  }
}
