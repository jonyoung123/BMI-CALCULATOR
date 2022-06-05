import 'package:flutter/material.dart';
import 'package:untitled/calculator_brain.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/widgets/card_widget.dart';
import 'package:untitled/widgets/drawer_widget.dart';
import '../widgets/bottom_nav.dart';
import 'package:intl/intl.dart';


class ResultPage extends StatelessWidget {
  ResultPage({required this.value, required this.result, required this.rangeText, required this.range, required this.description,required this.height,required this.weight, required this.bmiValue});
  final String value;
  final String result;
  final String rangeText;
  final String range;
  final String description;
  final int height;
  final int weight;
  final String bmiValue;

  List<List> cellLists = [];
  void cellList(){
    DateTime now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd');
    String date = formatter.format(now);
    String time = DateFormat.Hms().format(now);
    cellLists.add([height, weight, bmiValue, date, time]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: const Text('BMI CALCULATOR',),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 15, top: 10, left: 10),
                child: const Text('Your Result',
                style:  kTextStyle,
                textAlign: TextAlign.start,),
              )
          ),
          Expanded(
            flex: 7,
              child: CardWidget(
                  colour: kActivecolour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(result,
                    style: kResultTextStyle,),
                    Text(value,
                    style: kValueStyle,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Text(rangeText,
                          style: kRangeTextStyle,),
                        Text(range,
                          style: kDescriptionStyle,),
                      ],
                    ),
                    Text(description,
                    style: kDescriptionStyle,
                    textAlign: TextAlign.center,),
                    TextButton(onPressed: (){

                    },
                        style: TextButton.styleFrom(
                          backgroundColor: kInactiveColour,
                          fixedSize: const Size(200, 60)
                        ),
                        child: const Text('SAVE RESULT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ))
                  ],
                ),

              )
          ),
          BottomNavButton(text: 'RE-CALCULATE',
              onTap: (){
            Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
