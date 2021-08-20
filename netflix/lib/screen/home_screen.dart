import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TopBar();
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/images/netflix.png',
            fit: BoxFit.contain,
            height: 25.0,
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'TV program',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'Movies',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              'Favorite',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
