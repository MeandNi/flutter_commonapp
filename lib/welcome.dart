import 'package:flutter/material.dart';
import 'package:commonapp/login/login_page.dart';

import 'dart:ui' as ui;

class WelcomePage extends StatefulWidget {
  static String tag = 'welcome-page';
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with SingleTickerProviderStateMixin {
  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 500));
    _iconAnimation = new CurvedAnimation(
      parent: _iconAnimationController,
      curve: Curves.bounceOut,
    );
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    final toLogin = new FlatButton(
      child: new Text(
        "Login in",
        style: TextStyle(color: Colors.grey, fontSize: 20.0),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(LoginPage.tag);
      },
    );

    final toReg = Padding(
      padding: EdgeInsets.all(4.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
          side: BorderSide(color: Colors.white, width: 2.0),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(LoginPage.tag);
        },
        padding: EdgeInsets.fromLTRB(148.0, 12.0, 148.0, 12.0),
        color: Colors.transparent,
        child: Text('Register',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            )),
      ),
    );

    return Container(
      child: new Scaffold(
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Opacity(
                opacity: 1,
                child: new Container(
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new ExactAssetImage('assets/girl.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            BackdropFilter(
              filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: new Container(
                color: Colors.white.withOpacity(0.1),
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Center(
                  // child: new FlutterLogo(
                  //   size: _iconAnimation.value * 140.0,
                  // ),
                ),
                new Container(
                    child: new Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    toReg,
                    SizedBox(height: 10.0),
                    toLogin,
                  ],
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
