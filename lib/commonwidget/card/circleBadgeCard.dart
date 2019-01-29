import 'package:flutter/material.dart';

class CircleBadgeCard extends StatelessWidget {
  final String title;
  final Color titleColor;
  final String description;
  final Color descriptionColor;
  final Color backgroundColor;
  final Function onTap;
  final IconData icon;
  final Color iconColor;

  const CircleBadgeCard({
    Key key,
    this.backgroundColor,
    this.descriptionColor,
    this.titleColor,
    this.title,
    this.description,
    this.onTap,
    this.icon,
    this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: this.onTap,
        child: Card(
          color: (this.backgroundColor != null)
              ? this.backgroundColor
              : Colors.white,
          margin: const EdgeInsets.all(10.0),
          child: Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 60.0,
                      width: 100.0,
                      child: Container(),
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: 150.0,
                    child: Image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage("assets/images/circle.png"),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 60.0,
                      width: 100.0,
                      child: Container(),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: (this.icon != null) ? 0.0 : 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        (this.icon != null)
                            ? Icon(
                                this.icon,
                                color: (this.iconColor != null)
                                    ? this.iconColor
                                    : Colors.black,
                              )
                            : Container(),
                        Text(
                          (this.title != null) ? this.title : "",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                              color: (this.titleColor != null)
                                  ? this.titleColor
                                  : Colors.black),
                        ),
                        Text(
                          (this.description != null) ? this.description : "",
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 10.0,
                            color: (this.descriptionColor != null)
                                ? this.descriptionColor
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
