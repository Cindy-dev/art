import 'package:art/screen/collection.dart';
import 'package:art/screen/exhibition.dart';
import 'package:art/screen/home.dart';
import 'package:art/screen/login.dart';
import 'package:art/screen/membership.dart';
import 'package:art/screen/shop.dart';
import 'package:art/screen/tickets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        Shop.routeName: (ctx) => Shop(),
        Membership.routeName: (ctx) => Membership(),
        Exhibition.routeName: (ctx) => Exhibition(),
        Home.routeName: (ctx) => Home(),
        Login.routeName: (ctx) => Login(),
        Tickets.routName: (ctx) => Tickets(),
        Collections.routeName: (ctx) => Collections()
      },
    );
  }
}
