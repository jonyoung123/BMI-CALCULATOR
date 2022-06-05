import 'package:flutter/material.dart';
import 'package:untitled/screens/result_page.dart';
import 'package:untitled/screens/save_result.dart';
import '../widgets/card_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/iconContent.dart';
import '../constants.dart';
import '../widgets/bottom_card.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/listtile_widget.dart';
import '../calculator_brain.dart';
import '../widgets/drawer_widget.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender;
  int height1 = 183;
  int weight = 60;
  int age = 24;
  bool isShow = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: CardWidget(
                    onPress: (){
                      setState((){
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? kActivecolour : kInactiveColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      name: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    onPress: (){
                      setState((){
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender==Gender.female? kActivecolour: kInactiveColour,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      name: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: CardWidget(
                colour: kActivecolour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text('HEIGHT',
                    style: kLabelTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height1.toString(),
                        style: kHeightStyle),
                        const Text('cm',
                        style: kLabelTextStyle,)
                      ],
                    ),
                    SliderTheme(data: SliderThemeData(
                      trackHeight: 3,
                      inactiveTrackColor: Colors.teal[600],
                      activeTrackColor: Colors.white,
                      thumbColor: kBottomContainerColor,
                      overlayColor: Color(0x29EB1555),
                      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: const RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                        child: Slider(
                      onChanged: (double newValue){
                        setState((){
                          height1 = newValue.round();
                        });
                      },
                          value: height1.toDouble(),
                          min: 120.0,
                          max: 220.0,
                    ),)
                  ],
                ),
              ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardWidget(
                    colour: kActivecolour,
                    cardChild: BottomCard(
                      value: weight, name: 'WEIGHT',
                      decreaseValue: (){
                        setState((){
                          weight--;
                        });
                      },
                      increaseValue: (){
                        setState((){
                          weight++;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    colour: kActivecolour,
                    cardChild: BottomCard(value: age, name: 'AGE',
                      decreaseValue: (){
                        setState((){
                          age--;
                        });
                      },
                      increaseValue: (){
                        setState((){
                          age++;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomNavButton(
            text: 'CALCULATE YOUR BMI',
            onTap: (){
              CalculatorBrain calculate = CalculatorBrain(height: height1, weight: weight);
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>ResultPage(
                value: calculate.calculateBMI(),
                result: calculate.getResult()[0],
                rangeText: calculate.getResult()[1],
                range: calculate.getResult()[2],
                description: calculate.getResult()[3],
                height: height1,
                weight: weight,
                bmiValue: calculate.calculateBMI(),
              )));
            },
          ),
        ],
      ),
    );
  }
}




