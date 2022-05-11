import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class SecondaryPercents extends StatelessWidget {
  const SecondaryPercents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SinglePercentage()
        ],
      ),
    );
  }
}


class SinglePercentage extends StatelessWidget {
  const SinglePercentage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CircularPercentIndicator(
      radius: 100.0,
      lineWidth: 10.0,
      percent: 0.8,
      header: new Text("Icon header"),
      center: new Icon(
        Icons.person_pin,
        size: 50.0,
        color: Colors.blue,
      ),
      backgroundColor: Colors.grey,
      progressColor: Colors.blue,
    );
  }
}

