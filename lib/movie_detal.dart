import 'package:flutter/material.dart';
import 'package:flutter_movie_app_mdv/const.dart';
import 'package:flutter_movie_app_mdv/movie.dart';

class DetailMovie extends StatelessWidget {
  final Movie movie;

  DetailMovie(this.movie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: movie.title,
                  child: Container(
                    width: 100.0,
                    height: 150.0,
                    child: Image.network(
                      '$POSTER_PATH_URL${movie.posterPath}',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        movie.title,
                        style: TextStyle(
                            fontFamily: 'Merriweather', fontSize: 20.0),
                      ),
                      Text(
                        'Tanggal Rilis : ${movie.releaseDate}',
                        style: TextStyle(fontFamily: 'Merriweather'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Text('Sinopsis',
                style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            Text(movie.overview, style: TextStyle(fontFamily: 'Merriweather'))
          ],
        ),
      ),
    );
  }
}
