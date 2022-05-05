import 'package:flutter/material.dart';

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
        children: const [
         Padding(
           padding: EdgeInsets.only(
             top: 30,

           ),
           child:  Text('Start your day off right with these  healthy breakfast recipes ',
             textAlign: TextAlign.center,
             style: TextStyle(
               color: Color.fromRGBO(212,212,212,1),
               fontSize: 40,
             ),),
         )
        ],
      ),

    );
  }
}
