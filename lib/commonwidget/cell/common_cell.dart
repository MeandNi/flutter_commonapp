import 'package:flutter/material.dart';
import 'package:commonapp/app/me_color.dart';

class CommonCell extends StatelessWidget {
  final VoidCallback onPressed;
  final String subtitle;
  final String title;

  CommonCell({this.title, this.subtitle, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              color: MEColor.white,
              height: 55,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Text(title, style: TextStyle(fontSize: 20)),
                  Expanded(child: Container()),
                  Text(subtitle, style: TextStyle(fontSize: 18)),
                  SizedBox(width: 8.0,),
                  Image.asset('img/arrow_right.png'),
                ],
              ),
            ),
            Container(
              height: 1,
              color: MEColor.lightGray,
              margin: EdgeInsets.only(left: 60),
            ),
          ],
        ),
      ),
    );
  }
}
