import 'package:flutter/material.dart';
import '../constants.dart';
import '../calculator_brain.dart';

class TableCellWidget extends StatelessWidget {
  TableCellWidget({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return TableCell(child: Center(
      child: Text(label,
        style: kTableTextStyle,),
    ),);
  }
}