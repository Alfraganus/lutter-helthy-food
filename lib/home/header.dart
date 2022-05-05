import 'package:flutter/material.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:[
          MainHeader(),
        ],
      ),
    );
  }
}


class MainHeader extends StatelessWidget {
  const MainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightAndWidth = MediaQuery.of(context).size;
    return Container(
      height: heightAndWidth.height *0.60,
      width: heightAndWidth.height *100,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("main_backpng"),
          fit: BoxFit.fill
        )
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(
                  top: heightAndWidth.height*0.10,
                  bottom: heightAndWidth.height*0.06,
                ),
              child: const Text('Healthy Food', style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 50,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 30),
              child:  SizedBox(
                width: heightAndWidth.width*0.60,
                height: heightAndWidth.height*0.40,
                child: const Image(
                    image: AssetImage('Illus.png'),
                    /*width: 350,
                    height: 600,*/
                    fit:BoxFit.fill
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
