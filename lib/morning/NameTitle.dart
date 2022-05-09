import 'package:flutter/cupertino.dart';

class NameTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 25),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text('Guy Hawkins',
          textAlign: TextAlign.end,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Rubik',
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}

