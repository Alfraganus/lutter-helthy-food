import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'TitleWithMoreBtn.dart';


class Greeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: MenuWidgetContainer()
    );
  }
}

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

class BannerImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(top: 25),
      child: Image(
        fit: BoxFit.fill,
        width: double.infinity,
        image: AssetImage(
          'tab.png',
        ),
      ),
    );
  }
}


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



class MenuWidgetContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        children: [
          MenuHeader(),
          NameTitle(),
          BannerImage(),
          TitleWithMoreBtn(title: "Popular Recipes"),
        ],
      ),
    );
  }
}

