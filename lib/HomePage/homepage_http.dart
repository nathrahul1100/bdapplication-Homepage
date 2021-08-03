import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testappbd/Http%20Requests/httprequests.dart';
import 'package:testappbd/Http%20Requests/itemsjsonlists.dart';
import 'package:testappbd/extras/Drawer/drawer.dart';
import 'package:testappbd/extras/Notifications/notifications.dart';
import 'package:testappbd/extras/Widgets/lists.dart';

class HomePage extends StatelessWidget {
  final HttpService httpService = HttpService();
  // final Categories category;
  //final SubCategory subCategory;

  //HomePage({required this.category, required this.subCategory});

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
      body: FutureBuilder(
        future: httpService.getCategories(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Categories>> snapshot) {
          if (snapshot.hasData) {
            List<Categories>? categories = snapshot.data;
            return AppCard(
              child: ListView(
                children: categories!
                    .map(
                      (Categories categories) => ListTile(
                        title: Text(categories.title),
                        subtitle: Text(categories.title),
                      ),
                    )
                    .toList(),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
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
