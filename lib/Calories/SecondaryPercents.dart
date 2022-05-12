import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class SecondaryPercents extends StatelessWidget {
  const SecondaryPercents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SinglePercentage(calory: '462',color: '#99B1F5',Percantage: 0.65,title: 'Carbs'),
          SinglePercentage(calory: '210',color: '#FFD96A',Percantage: 0.25,title: 'Protein'),
          SinglePercentage(calory: '415',color: '#FFAB47',Percantage: 0.50,title: 'Fat'),
          SinglePercentage(calory: '162',color: '#FF6B78',Percantage: 0.18,title: 'Others'),
        ],
      ),
    );
  }
}


class SinglePercentage extends StatelessWidget {
  const SinglePercentage({Key? key, required this.calory, required this.color, required this.Percantage, required this.title})
      : super(key: key);

  final String calory;
  final String color;
  final double Percantage;
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CircularPercentIndicator(
          radius: 70.0,
          lineWidth: 16.0,
          percent: Percantage,
          center: RichText(
            textAlign: TextAlign.center,
            text:  TextSpan(text:'\n',
              children: [
                TextSpan(text: calory+' \n\n', style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900
                )),
                TextSpan(text: 'kcal \n', style: TextStyle(
                    fontSize: 12,
                    wordSpacing: 250,
                    fontWeight: FontWeight.w900
                )),
              ],
            ),
          ),
          backgroundColor:HexColor('#F4F6FA'),
          progressColor: HexColor(color),
        ),
        SizedBox(height: 10),
        Text(title, style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 18
        ),)
      ],
    );
  }
}

