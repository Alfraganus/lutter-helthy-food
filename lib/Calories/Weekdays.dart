import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WeekDays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Day(day: 'Mon',date: 14,isActive: false),
          Day(day: 'Tue',date: 15,isActive: false),
          Day(day: 'Wed',date: 16,isActive: true),
          Day(day: 'Thu',date: 17,isActive: false),
          Day(day: 'Fri',date: 18,isActive: false),
          Day(day: 'Sat',date: 19,isActive: false),
        ],
      ),
    );
  }
}

class Day extends StatelessWidget {
  @override
  final String day;
  final int date;
  final bool isActive;


  const Day({Key? key, required this.day, required this.date, required this.isActive}) : super(key: key);

  Widget build(BuildContext context) {
     Color color =  isActive == false? Colors.black:Colors.white;
    return Transform.translate(
       offset:  Offset(0, this.isActive == true ? -15 : 0),
      child: Container(
        padding: EdgeInsets.only(right: 20,top: 30),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          width: 80,
          height: 90,
          decoration: BoxDecoration(
            color: isActive == false? HexColor('#F4F4F4'): HexColor('#E5737D'),
          ),

          child: Column(
            children: [
              Text(day, style: TextStyle(
               color: color,
                fontWeight: FontWeight.w700,
                fontSize: 16
              ),),
              Text(date.toString(), style:  TextStyle(
                color:color,
                  fontWeight: FontWeight.w700,
                  fontSize: 16
              ))
            ],
          ),
        ),
      ),
    );
  }
}

