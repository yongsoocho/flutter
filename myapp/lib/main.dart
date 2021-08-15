import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CYS',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CYS first app'),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        elevation: 10.0,
      ),
      backgroundColor: Colors.lightBlue[300],
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/wtf.png'),
                radius: 70.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.black54,
              thickness: 1,
              endIndent: 30,
            ),
            Text(
              'CYS',
              style: TextStyle(
                color: Colors.white70,
                letterSpacing: 3.0,
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'One more',
              style: TextStyle(
                color: Colors.white54,
                letterSpacing: 5.0,
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: <Widget>[
                Icon(Icons.access_alarm_outlined),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Hello World!',
                  style: TextStyle(
                    fontSize: 10.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/wtf.png'),
                radius: 40.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
