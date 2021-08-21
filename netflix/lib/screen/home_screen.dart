import 'package:flutter/material.dart';
import 'package:netflix/model/model_movie.dart';
import 'package:netflix/widget/box_slider.dart';
import 'package:netflix/widget/carousel_slider.dart';
import 'package:netflix/widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': 'Crash Landing on you',
      'keyword': 'Love/Romance',
      'poster': 'CrashLanding.png',
      'like': false
    }),
    Movie.fromMap({
      'title': 'Crash Landing on you',
      'keyword': 'Love/Romance',
      'poster': 'CrashLanding.png',
      'like': false
    }),
    Movie.fromMap({
      'title': 'Crash Landing on you',
      'keyword': 'Love/Romance',
      'poster': 'CrashLanding.png',
      'like': false
    }),
    Movie.fromMap({
      'title': 'Crash Landing on you',
      'keyword': 'Love/Romance',
      'poster': 'CrashLanding.png',
      'like': false
    })
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(
              movies: movies,
            ),
            TopBar(),
          ],
        ),
        CircleSlider(
          movies: movies,
        ),
        BoxSlider(
          movies: movies,
        )
      ],
    );
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
