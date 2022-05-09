import 'package:flutter/cupertino.dart';

class BannerImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(top: 25),
      child: const Image(
        fit: BoxFit.fill,
        width: double.infinity,
        image: AssetImage(
          'tab.png',
        ),
      ),
    );
  }
}

