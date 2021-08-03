import 'package:flutter/material.dart';
import 'package:testappbd/extras/Notifications/notifications.dart';

class AppBarCustom extends StatelessWidget {
  final String title;
  const AppBarCustom({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.blue[900],
      title: Text(title),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.notification_important,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (BuildContext context) => new NotificationPage()));
          },
        )
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.fromLTRB(30, 10, 30, 10),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
