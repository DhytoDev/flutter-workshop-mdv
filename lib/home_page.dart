import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_movie_app_mdv/const.dart';
import 'package:flutter_movie_app_mdv/movie.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLoading = false;
  List<Movie> _movies = [];

  Future<List<Movie>> getMoviesFromApi() async {
    String url = '$BASE_URL/upcoming?api_key=$API_KEY';
    final List<Movie> movieList = [];

    http
        .get(url)
        .then((response) => response.body)
        .then(json.decode)
        .then((map) => map['results'])
        .then((movies) =>
            movies.forEach((movie) => movieList.add(Movie.fromJson(movie))));

    return movieList;
  }

  @override
  void initState() {
    super.initState();

    getMoviesFromApi().then((movies) {
      setState(() {
        _movies = movies;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final _gridView = Container(
      child: GridView.count(
        padding: const EdgeInsets.all(10.0),
        crossAxisCount: 2,
        childAspectRatio: 2 / 3.5,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        children: _movies.map((movie) => _createTile(movie)).toList(),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Top Movie'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: _gridView,
    );
  }

  _createTile(Movie movie) => Material(
        shadowColor: Colors.orange,
        elevation: 5.0,
        child: Card(
          elevation: 0.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(movie.posterPath, fit: BoxFit.cover),
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      movie.title,
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
