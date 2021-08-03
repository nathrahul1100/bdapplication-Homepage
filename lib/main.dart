import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:testappbd/HomePage/homepage.dart';
import 'package:testappbd/Http%20Requests/itemsjsonlists.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
