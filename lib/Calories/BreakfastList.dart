import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BreakfastList extends StatelessWidget {
  const BreakfastList({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading:ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child:Image(image: AssetImage('fastfood.jpg')),
        ) ,
        trailing: Image(image: AssetImage('right.png'), height: double.infinity),
        title: Text(title, style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w900,
        )),
        subtitle: Text('120 Calories',style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w900,
        )),
        contentPadding: EdgeInsets.all(10),
        tileColor: HexColor('#FFFFFF'),
      ),
    );
  }
}
