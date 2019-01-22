import 'package:commonapp/app/app_navigator.dart';
import 'package:flutter/material.dart';
//import 'package:homeapp/public.dart';

class MeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var user = UserManager.currentUser;

    return GestureDetector(
      onTap: () {
        AppNavigator.pushLogin(context);
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 30, 15, 15),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('img/placeholder_avatar.png'),
            ),
            SizedBox(width: 25),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '登录',
                    style: TextStyle(fontSize: 18),
                  ),
                  // SizedBox(height: 10),
                  // buildItems(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
