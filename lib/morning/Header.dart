import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'BannerImage.dart';
import 'MenuHeader.dart';
import 'NameTitle.dart';
import 'PopularRecipes.dart';
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

class MenuWidgetContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            MenuHeader(),
            NameTitle(),
            BannerImage(),
            const SizedBox(height: 30),
            const TitleWithMoreBtn(title: "Popular Recipes"),
            const SizedBox(height: 20),
            const PopularRecipes(),
            const SizedBox(height: 30),
            const TitleWithMoreBtn(title: "Breakfast"),
            const SizedBox(height: 20),
            const PopularRecipes(),
          ],
        ),
      ),
    );
  }
}

