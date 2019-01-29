import 'package:flutter/material.dart';

class EasyMultipleCard extends StatelessWidget {
  final String title;
  final IconData suffixIcon;
  final IconData prefixIcon;
  final Color suffixIconColor;
  final Color prefixIconColor;
  final Color titleColor;
  final Color backgroundColor;
  final Color dividerColor;
  final List<Widget> items;
  final Function onTap;

  const EasyMultipleCard(
      {Key key,
      this.title,
      this.suffixIcon,
      this.prefixIcon,
      this.titleColor,
      this.backgroundColor,
      this.suffixIconColor,
      this.prefixIconColor,
      this.dividerColor,
      this.items,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: this.onTap,
        child: Card(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: const EdgeInsets.all(15.0),
                        child: Text(
                          (this.title != null) ? this.title : '',
                          style: TextStyle(
                              color: (this.titleColor != null)
                                  ? this.titleColor
                                  : Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 10.0),
                      child: (this.suffixIcon != null)
                          ? Icon(
                              this.suffixIcon,
                              color: (this.suffixIconColor != null)
                                  ? this.suffixIconColor
                                  : Colors.black,
                            )
                          : Container(),
                    ),
                  ],
                ),
              ),
              Container(
                height: 2.0,
                color: (this.dividerColor != null)
                    ? this.dividerColor
                    : Colors.grey[200],
              ),
              Column(children: this.items),
              Container(
                margin: const EdgeInsets.only(bottom: 5.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemMultipleCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String status;
  final Color iconColor;
  final Color titleColor;
  final Color statusColor;
  final Color backgroundColor;

  const ItemMultipleCard({
    Key key,
    this.icon,
    this.title,
    this.status,
    this.titleColor,
    this.backgroundColor,
    this.iconColor,
    this.statusColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
            child: (this.icon != null)
                ? Icon(
                    this.icon,
                    color: (this.iconColor != null)
                        ? this.iconColor
                        : Colors.grey[600],
                  )
                : Container(),
          ),
          Expanded(
            flex: 1,
            child: Text(
              (this.title != null) ? this.title : '',
              style: TextStyle(
                color: (this.titleColor != null)
                    ? this.titleColor
                    : Colors.grey[600],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: Text(
              (this.status != null) ? this.status : '',
              style: TextStyle(
                  color: (this.statusColor != null)
                      ? this.statusColor
                      : Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
