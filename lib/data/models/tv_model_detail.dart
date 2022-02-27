import 'package:ditonton/data/models/genre_model.dart';
import 'package:ditonton/domain/entities/tv_detail.dart';
import 'package:equatable/equatable.dart';

class TvModelDetail extends Equatable {
  TvModelDetail({
    required this.episodeRunTime,
    required this.firstAirDate,
    // required this.languages,
    required this.name,
    required this.originalName,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
    required this.backdropPath,
    required this.genres,
    required this.homePage,
    required this.id,
    required this.originalLanguage,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.status,
    required this.tagline,
    required this.voteAverage,
    required this.voteCount,
  });

  final String? backdropPath;
  final List<GenreModel> genres;
  final String homePage;
  final String? firstAirDate;
  final List<dynamic>? episodeRunTime;
  final int id;
  // final List<dynamic> languages;
  final String? name;
  final String originalLanguage;
  final String? originalName;
  final String overview;
  final int? numberOfEpisodes;
  final int? numberOfSeasons;
  final double? popularity;
  final String? posterPath;
  final String status;
  final String tagline;
  final double voteAverage;
  final int voteCount;

  factory TvModelDetail.fromJson(Map<String, dynamic> json) => TvModelDetail(
        backdropPath: json["backdrop_path"],
        numberOfEpisodes: json["number_of_episodes"],
        originalName: json["original_name"],
        numberOfSeasons: json["number_of_seasons"],
        episodeRunTime: json["episode_run_time"],
        firstAirDate: json["first_air_date"],
        // languages: json["languages"],
        name: json["name"],
        genres: List<GenreModel>.from(
            json["genres"].map((x) => GenreModel.fromJson(x))),
        homePage: json["homepage"],
        id: json["id"],
        originalLanguage: json["original_language"],
        overview: json["overview"],
        popularity: json["popularity"].toDouble(),
        posterPath: json["poster_path"],
        status: json["status"],
        tagline: json["tagline"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
      );

  Map<String, dynamic> toJson() => {
        "first_air_date": firstAirDate,
        "number_of_seasons": numberOfSeasons,
        "number_of_episodes": numberOfEpisodes,
        "backdrop_path": backdropPath,
        "original_name": originalName,
        "name": name,
        "genres": List<dynamic>.from(genres.map((x) => x.toJson())),
        "homepage": homePage,
        "id": id,
        "original_language": originalLanguage,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "status": status,
        "tagline": tagline,
        "vote_average": voteAverage,
        "vote_count": voteCount,
      };

  TvDetail toEntity() {
    return TvDetail(
        numberOfEpisodes: this.numberOfEpisodes,
        numberOfSeasons: this.numberOfSeasons,
        episodeRunTime: this.episodeRunTime,
        genres: this.genres.map((genre) => genre.toEntity()).toList(),
        backdropPath: this.backdropPath,
        id: this.id,
        overview: this.overview,
        popularity: this.popularity,
        posterPath: this.posterPath,
        firstAirDate: this.firstAirDate,
        name: this.name,
        originalName: this.originalName,
        voteAverage: this.voteAverage,
        voteCount: this.voteCount,
        originalLanguage: this.originalLanguage);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        backdropPath,
        firstAirDate,
        name,
        originalName,
        genres,
        homePage,
        id,
        originalLanguage,
        overview,
        popularity,
        posterPath,
        status,
        tagline,
        voteAverage,
        voteCount,
      ];
}
