import 'package:flutter/material.dart';
import 'package:netflix/screen/home_screen.dart';
import 'package:netflix/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Container(
                  child: HomeScreen(),
                ),
                Container(
                  child: Center(
                    child: Text('search'),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('saved'),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('more'),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: BottomBar(),
          )),
    );
  }
}
