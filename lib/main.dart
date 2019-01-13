import 'package:flutter/material.dart';
import 'home/home_page.dart';
import 'login/login_page.dart';
import 'welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    WelcomePage.tag: (context) => WelcomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: WelcomePage(),
      routes: routes,
    );
  }
}
