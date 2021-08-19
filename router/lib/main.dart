import 'package:flutter/material.dart';
import 'package:router/screenA.dart';
import 'package:router/screenB.dart';
import 'package:router/screenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = "route example";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC()
      },
    );
  }
}
