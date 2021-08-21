import 'package:flutter/material.dart';
import 'package:netflix/model/model_movie.dart';

class BoxSlider extends StatelessWidget {
  final dynamic movies;
  BoxSlider({this.movies});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Popular on Netflix'),
          Container(
            height: 120.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: makeBoxImages(movies),
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> makeBoxImages(List<Movie> movies) {
  List<Widget> results = [];
  for (var i = 0; i < movies.length; i++) {
    results.add(InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(right: 10.0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Image.asset('assets/images/' + movies[i].poster),
        ),
      ),
    ));
  }
  return results;
}
