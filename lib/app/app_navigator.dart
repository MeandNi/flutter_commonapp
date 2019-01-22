import 'package:commonapp/login/login_page.dart';
import 'package:commonapp/me/SettingPage.dart';
import 'package:commonapp/me/web_page.dart';
import 'package:flutter/material.dart';


class AppNavigator {
  static push(BuildContext context, Widget scene) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => scene,
      ),
    );
  }

  static pushLogin(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LoginPage();
    }));
  }

  static pushSetting(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SettingPage();
    }));
  }

  static pushWeb(BuildContext context, String url, String title) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WebPage(url: url, title: title);
    }));
  }
}
