import 'package:flutter/material.dart';

class FirstItem extends StatefulWidget {
  final String title;
  FirstItem(this.title);

  _FirstItemState createState() => _FirstItemState();
}

class _FirstItemState extends State<FirstItem> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(widget.title),
        leading: new IconButton(
          tooltip: 'Previous choice',
          icon: const Icon(
            Icons.home,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        child: Center(
          child: Text(widget.title),
        ),
      ),
    );
  }
}