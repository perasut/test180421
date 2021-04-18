import 'package:cabbittest/routers.dart';
import 'package:cabbittest/themes/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyStyle().appTheme(),
      initialRoute: '/dashboard',
      routes: routes,
    );
  }
}
