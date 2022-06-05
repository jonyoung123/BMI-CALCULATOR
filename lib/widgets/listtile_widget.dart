import 'package:flutter/material.dart';
import '../constants.dart';

class ListTileWidget extends StatelessWidget {
  ListTileWidget({required this.icon, required this.name, required this.navigator});
  final IconData icon;
  final String name;
  final Function() navigator;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(name,
        style: kIconStyle,),
      hoverColor: kInactiveColour,
      onTap: navigator,
    );
  }
}