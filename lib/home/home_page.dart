import 'package:flutter/material.dart';
import 'package:commonapp/commonwidget/icon_tab.dart';

import 'package:commonapp/home/first.dart';

const double _kTabTextSize = 11.0;
const int INDEX_FIRST = 0;
const int INDEX_SECOND = 1;
const int INDEX_THIRD = 2;
const int INDEX_FOURTH = 3;
Color _kPrimaryColor = new Color.fromARGB(255, 0, 215, 198);

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  TabController _controller;
  VoidCallback onChanged;

  @override
  void initState() {
    super.initState();
    _controller =
        new TabController(initialIndex: _currentIndex, length: 4, vsync: this);
    onChanged = () {
      setState(() {
        _currentIndex = this._controller.index;
      });
    };

    _controller.addListener(onChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(onChanged);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final bottomtap = new Material(
      color: Colors.white,
      child: new TabBar(
        controller: _controller,
        indicatorSize: TabBarIndicatorSize.label,
        labelStyle: new TextStyle(fontSize: _kTabTextSize),
        tabs: <IconTab>[
          new IconTab(
              icon: _currentIndex == INDEX_FIRST
                  ? "assets/images/ic_main_tab_company_pre.png"
                  : "assets/images/ic_main_tab_company_nor.png",
              text: "home",
              color: _currentIndex == INDEX_FIRST
                  ? _kPrimaryColor
                  : Colors.grey[900]),
          new IconTab(
              icon: _currentIndex == INDEX_SECOND
                  ? "assets/images/ic_main_tab_contacts_pre.png"
                  : "assets/images/ic_main_tab_contacts_nor.png",
              text: "co",
              color: _currentIndex == INDEX_SECOND
                  ? _kPrimaryColor
                  : Colors.grey[900]),
          new IconTab(
              icon: _currentIndex == INDEX_THIRD
                  ? "assets/images/ic_main_tab_find_pre.png"
                  : "assets/images/ic_main_tab_find_nor.png",
              text: "find",
              color: _currentIndex == INDEX_THIRD
                  ? _kPrimaryColor
                  : Colors.grey[900]),
          new IconTab(
              icon: _currentIndex == INDEX_FIRST
                  ? "assets/images/ic_main_tab_my_pre.png"
                  : "assets/images/ic_main_tab_my_nor.png",
              text: "Me",
              color: (_currentIndex == INDEX_FIRST)
                  ? _kPrimaryColor
                  : Colors.grey[900]),
        ],
      ),
    );

    return Scaffold(
        body: new TabBarView(
          children: <Widget>[new FirstItem("First"), new FirstItem("Second"), new FirstItem("Third"), new FirstItem("Fourth")],
          controller: _controller,
        ),
        bottomNavigationBar: bottomtap);
  }
}
