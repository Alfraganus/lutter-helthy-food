import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Calories/Main.dart';

class PopularRecipes extends StatelessWidget {
  const PopularRecipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Product(),
          Product(),
          Product(),
          Product(),
          Product(),
        ],
      ),
    );
  }
}

class Product extends StatelessWidget {
  const Product({Key? key, this.image, this.title, this.desc})
      : super(key: key);

  final image;
  final title;
  final desc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CaloriesMain()),
        );
      },
      child: Container(
        padding: EdgeInsets.only(right: 25),
        width: MediaQuery.of(context).size.width * 0.35,
        height: 320,
        child:  Container(
          decoration: BoxDecoration(
            color: HexColor('#FFFFFF'),

          ),
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 0),
          child: Column(
            children: [
          ClipRRect (
          borderRadius: BorderRadius.circular(30),
            child: Image(
              width: double.infinity,
              height: 200,
              image: AssetImage(
                  'fastfood.jpg'
              ),
            ),
          ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 0,horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Sandwich',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                          size: 24.0,
                          semanticLabel: 'Text to announce in accessibility modes',
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('120 calories',
                        style: TextStyle(
                          fontSize: 20,
                        ),),
                    )
                  ],
                ),
              ),

            ],
          ),
        )
      ),
    );
  }
}
