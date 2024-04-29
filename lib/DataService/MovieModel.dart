class Movie {
  String? id;
  String plot;
  List<String> genres;
  int runtime;
  List<String> cast;
  String poster;
  String title;
  String fullplot;
  List<String> languages;
  DateTime released;
  List<String> directors;
  String rated;
  MovieAwards awards;
  DateTime lastupdated;
  int year;
  Imdb imdb;
  List<String> countries;
  String type;
  Tomatoes tomatoes;
  int numMflixComments;

  Movie({
    //required this.id,
    required this.plot,
    required this.genres,
    required this.runtime,
    required this.cast,
    required this.poster,
    required this.title,
    required this.fullplot,
    required this.languages,
    required this.released,
    required this.directors,
    required this.rated,
    required this.awards,
    required this.lastupdated,
    required this.year,
    required this.imdb,
    required this.countries,
    required this.type,
    required this.tomatoes,
    required this.numMflixComments,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      //id: json['_id']['\$oid'].toString(),
      plot: json['plot'],
      genres: List<String>.from(json['genres']),
      runtime: json['runtime'],
      cast: List<String>.from(json['cast']),
      poster: json['poster'],
      title: json['title'],
      fullplot: json['fullplot'],
      languages: List<String>.from(json['languages']),
      released: DateTime.parse(json['released']),
      directors: List<String>.from(json['directors']),
      rated: json['rated'],
      awards: MovieAwards.fromJson(json['awards']),
      lastupdated: DateTime.parse(json['lastupdated']),
      year: json['year'],
      imdb: Imdb.fromJson(json['imdb']),
      countries: List<String>.from(json['countries']),
      type: json['type'],
      tomatoes: Tomatoes.fromJson(json['tomatoes']),
      numMflixComments: json['num_mflix_comments'],
    );
  }
}

class MovieAwards {
  int wins;
  int nominations;
  String text;

  MovieAwards({
    required this.wins,
    required this.nominations,
    required this.text,
  });

  factory MovieAwards.fromJson(Map<String, dynamic> json) {
    return MovieAwards(
      wins: json['wins'],
      nominations: json['nominations'],
      text: json['text'],
    );
  }
}

class Imdb {
  double rating;
  int votes;
  int id;

  Imdb({
    required this.rating,
    required this.votes,
    required this.id,
  });

  factory Imdb.fromJson(Map<String, dynamic> json) {
    return Imdb(
      rating: json['rating'].toDouble(),
      votes: json['votes'],
      id: json['id'],
    );
  }
}

class Tomatoes {
  TomatoesViewer viewer;
  int fresh;
  TomatoesCritic critic;
  int rotten;
  DateTime lastUpdated;

  Tomatoes({
    required this.viewer,
    required this.fresh,
    required this.critic,
    required this.rotten,
    required this.lastUpdated,
  });

  factory Tomatoes.fromJson(Map<String, dynamic> json) {
    return Tomatoes(
      viewer: TomatoesViewer.fromJson(json['viewer']),
      fresh: json['fresh'],
      critic: TomatoesCritic.fromJson(json['critic']),
      rotten: json['rotten'],
      lastUpdated: DateTime.parse(json['lastUpdated']),
    );
  }
}

class TomatoesViewer {
  double rating;
  int numReviews;
  int meter;

  TomatoesViewer({
    required this.rating,
    required this.numReviews,
    required this.meter,
  });

  factory TomatoesViewer.fromJson(Map<String, dynamic> json) {
    return TomatoesViewer(
      rating: json['rating'].toDouble(),
      numReviews: json['numReviews'],
      meter: json['meter'],
    );
  }
}

class TomatoesCritic {
  double rating;
  int numReviews;
  int meter;

  TomatoesCritic({
    required this.rating,
    required this.numReviews,
    required this.meter,
  });

  factory TomatoesCritic.fromJson(Map<String, dynamic> json) {
    return TomatoesCritic(
      rating: json['rating'].toDouble(),
      numReviews: json['numReviews'],
      meter: json['meter'],
    );
  }
}
