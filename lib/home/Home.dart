import 'package:flutter/material.dart';
import 'MiddleText.dart';
import 'header.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children:[
            MainHeader(),
            MiddleText(),
          ],
        ),
      ),
    );
  }
}
