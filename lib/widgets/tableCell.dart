import 'package:flutter/material.dart';
import '../calculator_brain.dart';
import '../screens/input_page.dart';
import 'package:intl/intl.dart';

// CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
// int height;
// int weight;
void cellList(height, weight){
  DateTime now = DateTime.now();
  var formatter = DateFormat('yyyy-MM-dd');
  String date = formatter.format(now);
  String time = DateFormat.Hms().format(now);
  //cellLists.add([height, weight, calculateBMI(), date, time]);
}
