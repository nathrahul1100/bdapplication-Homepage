import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  final Widget child;
  const HomePageWidget({Key? key, required this.child}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 150,
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: widget.child,
          )
        ]));
  }
}
