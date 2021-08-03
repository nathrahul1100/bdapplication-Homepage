import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:testappbd/HomePage/homepage.dart';
import 'package:testappbd/Http%20Requests/itemsjsonlists.dart';
import 'package:testappbd/Items/iteminfo.dart';
import 'package:testappbd/Items/items.dart';
import 'package:testappbd/extras/Widgets/lists.dart';

// ignore: must_be_immutable
class PlusPumpsPage extends StatelessWidget {
  List<Items> itemss = Iteminfo.getItems();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.blue[900],
            title: Text(
              "Plus Pumps",
              style: TextStyle(fontFamily: 'Poppins-Bold', fontSize: 22.0),
            ),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
          body: Container(
            child: ListView.builder(
                itemCount: itemss.length,
                itemBuilder: (context, index) {
                  return AppCard(
                      child: ListTile(
                    title: Text(
                      itemss[index].title,
                      style: TextStyle(
                          fontFamily: 'Poppins-Regular', fontSize: 16.0),
                    ),
                    subtitle: Text(
                      itemss[index].subtitle,
                      style: TextStyle(
                          fontFamily: 'Poppins-Regular', fontSize: 16.0),
                    ),
                    leading: Image.asset(
                        "assets/images/" + itemss[index].imgName + ".png",
                        fit: BoxFit.cover),
                  ));
                }),
          ),
        ));
  }
}
