import 'package:flutter/material.dart';

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
              WeekDays(),
            ],
          ),
        ),
      ) ,
    );
  }
}




