class Movie {
  int id;
  String title, posterPath, backdropPath, overview, releaseDate;
  double popularity;
  int voteCount;
  num voteAverage;

  Movie(
      {this.id,
      this.title,
      this.posterPath,
      this.backdropPath,
      this.overview,
      this.releaseDate,
      this.popularity,
      this.voteCount,
      this.voteAverage});

//  Movie movie = Movie(title: 'Ant Man');

  Movie.fromJson(Map json)
      : id = json['id'],
        title = json['title'],
        popularity = json['popularity'],
        posterPath = json['poster_path'],
        backdropPath = json['backdrop_path'],
        overview = json['overview'],
        releaseDate = json['release_date'],
        voteCount = json['vote_count'],
        voteAverage = json['vote_average'];
}

/*final List<Movie> movies = [
  Movie('Jurassic World', 'assets/poster_1.jpg'),
  Movie('Si Doel Anak Sekolahan', 'assets/poster_2.jpg'),
  Movie('Beauty and The Beast', 'assets/poster_3.jpg'),
  Movie('Avatar', 'assets/poster_4.jpg'),
  Movie('Ganteng-ganteng Serigala', 'assets/poster_5.jpg'),
];*/
