import 'package:flutter/cupertino.dart';

class MenuHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.topLeft,
      child: Row(
        children: const [
          Image(image: AssetImage('Sun.png')),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child:  Text('Good morning',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22
              ),
            ),
          ),
          Spacer(),
          Align(
              alignment: Alignment.topRight,
              child:Image(image: AssetImage('fi-rr-bell.png') ,
              )),
        ],
      ),
    );
  }
}
