import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:testappbd/Items/PlusPumps.dart';
import 'package:testappbd/Items/iteminfo.dart';
import 'package:testappbd/Items/items.dart';
import 'package:testappbd/extras/Drawer/drawer.dart';
import 'package:testappbd/extras/Notifications/notifications.dart';
import 'package:testappbd/extras/Widgets/Homepage/homepage.dart';
import 'package:testappbd/extras/Widgets/textstyle.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Items> itemss = Iteminfo.getItems();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
//--------------------------------------------APP BAR ---------------------------------------
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[900],
        title: Text("Home"),
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
                      builder: (BuildContext context) =>
                          new NotificationPage()));
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
      ),
      drawer: MainDrawer(),
//------------------------------------------BODY------------------------------------------
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            //------------------------------------------------------------------------------------------------------------
            ListTile(
              leading:
                  Text("Plus Pumps", style: CustomTextStyle.heading_homepage),
              trailing: Container(
                child: TextButton(
                  child: Text(
                    'View All',
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new PlusPumpsPage()));
                  },
                ),
              ),
            ),

            SizedBox(
              height: 150.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return HomePageWidget(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          child: Image.asset(
                              "assets/images/" + itemss[index].imgName + ".png",
                              fit: BoxFit.cover)),
                      Text(itemss[index].title,
                          style: CustomTextStyle.contents_homepage),
                      Text(itemss[index].subtitle,
                          style: CustomTextStyle.contents_homepage),
                    ],
                  ));
                },
              ),
            ),
            //------------------------------------------------------------------------------------------------
            ListTile(
              leading:
                  Text("Plus Pumps", style: CustomTextStyle.heading_homepage),
              trailing: Container(
                child: TextButton(
                  child: Text(
                    'View All',
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new PlusPumpsPage()));
                  },
                ),
              ),
            ),

            SizedBox(
              height: 150.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return HomePageWidget(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          child: Image.asset(
                              "assets/images/" + itemss[index].imgName + ".png",
                              fit: BoxFit.cover)),
                      Text(itemss[index].title,
                          style: CustomTextStyle.contents_homepage),
                      Text(itemss[index].subtitle,
                          style: CustomTextStyle.contents_homepage),
                    ],
                  ));
                },
              ),
            ),
            //-----------------------------------------------------------------------------------------------------------
            ListTile(
              leading:
                  Text("Plus Pumps", style: CustomTextStyle.heading_homepage),
              trailing: Container(
                child: TextButton(
                  child: Text(
                    'View All',
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                new PlusPumpsPage()));
                  },
                ),
              ),
            ),

            SizedBox(
              height: 150.0,
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return HomePageWidget(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          child: Image.asset(
                              "assets/images/" + itemss[index].imgName + ".png",
                              fit: BoxFit.cover)),
                      Text(itemss[index].title,
                          style: CustomTextStyle.contents_homepage),
                      Text(itemss[index].subtitle,
                          style: CustomTextStyle.contents_homepage),
                    ],
                  ));
                },
              ),
            ),
            //--------------------------------------------------------------------------------------------------------------------
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message_outlined),
        backgroundColor: Colors.orange[600],
        foregroundColor: Colors.white,
        onPressed: () => {},
      ),
    ));
  }
}
