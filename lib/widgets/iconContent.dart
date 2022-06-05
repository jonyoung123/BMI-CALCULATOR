import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {

  IconContent({required this.icon, required this.name});

  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(name,
          style: kLabelTextStyle,)
      ],
    );
  }
}
