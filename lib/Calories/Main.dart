import 'package:flutter/material.dart';
import 'PercentMain.dart';
import 'SecondaryPercents.dart';
import 'Weekdays.dart';

class CaloriesMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calories'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Text('Calories',textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800
              ),),
              WeekDays(),
              SizedBox(height: 20),
              PercentMainIndicator(),
              SizedBox(height: 20),
              SecondaryPercents()
            ],
          ),
        ),
      ) ,
    );
  }
}




