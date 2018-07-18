class Movie {
  int id;
  String title, posterPath, backdropPath, overview, releaseDate;
  double popularity;
  int voteCount;
  num voteAverage;

  Movie(this.title, this.posterPath);

/* Movie(
      {this.id,
      this.title,
      this.posterPath,
      this.backdropPath,
      this.overview,
      this.releaseDate,
      this.popularity,
      this.voteCount,
      this.voteAverage});*/

//  Movie movie = Movie(title: 'Ant Man');

}

final List<Movie> movies = [
  Movie('Jurassic World', 'assets/poster_1.jpg'),
  Movie('Si Doel Anak Sekolahan', 'assets/poster_2.jpg'),
  Movie('Beauty and The Beast', 'assets/poster_3.jpg'),
  Movie('Avatar', 'assets/poster_4.jpg'),
  Movie('Ganteng-ganteng Serigala', 'assets/poster_5.jpg'),
];
