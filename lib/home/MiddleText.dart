import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tetete/morning/Header.dart';
class MiddleText extends StatelessWidget {
  const MiddleText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        children:  [
         const Padding(
           padding: EdgeInsets.only(
             top: 30,
             bottom: 65,
           ),
           child:  Text('Start your day off right with these  healthy breakfast recipes ',
             textAlign: TextAlign.center,
             style: TextStyle(
               color: Color.fromRGBO(212,212,212,1),
               fontSize: 40,
             ),),
         ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: HexColor('#E5737D'),
              minimumSize: const Size.fromHeight(80), // NEW
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Greeting()),
              );
            },
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'Get Started',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}
