import 'dart:math';

import 'package:intl/intl.dart';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int  weight;
  double _bmi=0;

  List<List> cellLists = [];

  String calculateBMI(){
    _bmi = weight / pow((height/100), 2);
    return _bmi.toStringAsFixed(1);
  }
  List<String> getResult(){
    if (_bmi>=25){
      return ['OVERWEIGHT', 'Overweight BMI range:', '25kg/m2 and above', 'You have a higher than normal body weight. Try to exercise more.' ];
    } else if (_bmi>18){
      return ['NORMAL', 'Normal BMI range:', '18 - 25kg/m2', 'You have a normal body weight. Good job!'];
    } else {
      return ['UNDERWEIGHT', 'Underweight BMI range', 'less than 18kg/m2', 'You have a lower than normal body weight. You can eat a bit more.'];
    }
  }

}