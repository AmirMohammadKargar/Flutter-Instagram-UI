import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Label {
  String text;
  bool isIcon;

  IconData icon;
  Label(text, isIcon, icon) {
    this.text = text;
    this.isIcon = isIcon;

    this.icon = icon;
  }
}

List<Label> labels = [
  Label("IGTV", true, Icons.tv_rounded),
  Label("Shop", true, Icons.shopping_bag),
  Label("Style", false, null),
  Label("Auto", false, null),
  Label("Sports", false, null),
];
