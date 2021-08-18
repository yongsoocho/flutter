import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print("menu is clicked~");
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("actions icon is clicked~!");
              },
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/wtf.png'),
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/wtf.png'),
                    backgroundColor: Colors.white54,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/wtf.png'),
                    backgroundColor: Colors.white54,
                  ),
                ],
                accountName: Text('yongsoo'),
                accountEmail: Text('cys@example.com'),
                onDetailsPressed: () {
                  print("onDetailPressed is on !");
                },
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.blue[500],
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.blue[500],
                  ),
                ),
                onTap: () {
                  print("Home is clicked!");
                },
                trailing: Icon(
                  Icons.add,
                  color: Colors.blue[500],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue[500],
                ),
                title: Text(
                  'Setting',
                  style: TextStyle(
                    color: Colors.blue[500],
                  ),
                ),
                onTap: () {
                  print("Setting is clicked!");
                },
                trailing: Icon(
                  Icons.add,
                  color: Colors.blue[500],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.blue[500],
                ),
                title: Text(
                  'Q&A',
                  style: TextStyle(
                    color: Colors.blue[500],
                  ),
                ),
                onTap: () {
                  print("Q&A is clicked!");
                },
                trailing: Icon(
                  Icons.add,
                  color: Colors.blue[500],
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.lightBlue[300],
        body: MyBody());
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
          Image.asset(
            'assets/wtf.png',
            width: 100.0,
          ),
          Center(
            child: TextButton(
              child: Text(
                'SHOW ME',
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.teal,
                onSurface: Colors.grey,
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Hello SnackBar',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.amber[200],
                      ),
                    ),
                    backgroundColor: Colors.red[200],
                    duration: Duration(
                      milliseconds: 500,
                    ),
                  ),
                );
              },
            ),
          ),
          TextButton(
            onPressed: () {
              fluttertoast();
            },
            child: Text('Hi~'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.indigo,
            ),
          )
        ],
      ),
    );
  }
}

void fluttertoast() {
  Fluttertoast.showToast(
    msg: 'Flutttterrrr~',
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.yellow[600],
    fontSize: 20.0,
    textColor: Colors.white54,
    toastLength: Toast.LENGTH_SHORT,
  );
}
