import 'package:flutter/material.dart';
import 'package:flutter_movie_app_mdv/movie.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _isLoading = false;

  @override
  Widget build(BuildContext context) {
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
      body: _gridView(),
    );
  }

  _gridView() => Container(
        child: GridView.count(
          padding: const EdgeInsets.all(8.0),
          crossAxisCount: 2,
          childAspectRatio: 2 / 3.5,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          children: <Widget>[
            _createTile(Movie('Jurrasic World', 'assets/poster_1.jpg')),
            _createTile(Movie('Ready Player One', 'assets/poster_2.jpg')),
            _createTile(Movie('Ant Man', 'assets/poster_3.jpg')),
            _createTile(Movie('Thor', 'assets/poster_4.jpg')),
          ],
        ),
      );

  _createTile(Movie movie) => Material(
        shadowColor: Colors.orange,
        child: Card(
          elevation: 10.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(movie.posterPath, fit: BoxFit.cover),
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      movie.title,
                      style: TextStyle(fontFamily: 'Merriweather'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
