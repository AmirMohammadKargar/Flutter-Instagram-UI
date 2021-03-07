import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.83,
      height: size.height * 0.05,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size.width * 0.03),
        child: TextField(
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            fillColor: Colors.grey[300],
            filled: true,
            disabledBorder: InputBorder.none,
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
            hintText: "Search",
            hintStyle: TextStyle(
              fontSize: 17.0,
            ),
          ),
        ),
      ),
    );
  }
}
