import 'package:flutter/material.dart';
import 'package:untitled/widgets/drawer_widget.dart';
import '../widgets/tableCell_widget.dart';
import '../constants.dart';


class SavedResults extends StatelessWidget {
  //List<List> savedLists = ResultPage().cellLists;
  //SavedResults({required this.savedLists});

  //final List savedLists;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: const Text('BMI CALCULATOR',),
      ),
      body: Column(
        children: [
          const Text('YOUR RESULT',
          style: kTextStyle,),
          const SizedBox(height: 15,),
          Table(
            border: TableBorder.all(
              width: 3.0,
              color: Colors.white,
            ),
            children: [
              TableRow(
                children: [
                  TableCellWidget(label: 'HEIGHT'),
                  TableCellWidget(label: 'WEIGHT'),
                  TableCellWidget(label: 'BMI'),
                  TableCellWidget(label: 'DATE'),
                  TableCellWidget(label: 'TIME')
                ]
              ),
            ],
          ),
        ],
      ),
    );
  }
}


