import 'package:commonapp/app/app_navigator.dart';
import 'package:commonapp/commonwidget/cell/me_cell.dart';
import 'package:commonapp/me/SettingPage.dart';
import 'package:commonapp/me/me_header.dart';
import 'package:flutter/material.dart';

class MePage extends StatelessWidget {
  Widget buildCells(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          MeCell(
            title: '列表1',
            iconName: 'img/me_buy.png',
            onPressed: () {},
          ),
          MeCell(
            title: '列表2',
            iconName: 'img/me_feedback.png',
            onPressed: () {},
          ),
          MeCell(
            title: '列表3',
            iconName: 'img/me_coupon.png',
            onPressed: () {},
          ),
          SizedBox(height: 24.0),
          MeCell(
            title: '列表4',
            iconName: 'img/me_date.png',
            onPressed: () {},
          ),
          SizedBox(height: 24.0),
          MeCell(
            title: '列表5',
            iconName: 'img/me_action.png',
            onPressed: () {},
          ),
          SizedBox(height: 24.0),
          MeCell(
            title: '设置',
            iconName: 'img/me_setting.png',
            onPressed: () {
              AppNavigator.pushSetting(context);
            },
          ),
          MeCell(
            title: 'About',
            iconName: 'img/me_feedback.png',
            onPressed: () {
              AppNavigator.pushWeb(
                  context, 'https://github.com/Meandni', 'Github');
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我"),
        elevation: 0,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            MeHeader(),
            SizedBox(height: 10),
            buildCells(context),
          ],
        ),
      ),
    );
  }
}
