import 'package:flutter/material.dart';
import '../widgets/round_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class BottomCard extends StatelessWidget {
  BottomCard({required this.value, required this.name, this.decreaseValue, this.increaseValue});

  final int value;
  final String name;
  final Function()? increaseValue;
  final Function()? decreaseValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(name,
          style: kLabelTextStyle,),
        Text(
          value.toString(),
          style: kHeightStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: decreaseValue
            ),
            SizedBox(width: 10,),
            RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: increaseValue
            )
          ],
        )
      ],
    );
  }
}
