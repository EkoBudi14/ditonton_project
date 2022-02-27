import 'package:ditonton/domain/entities/tv.dart';
import 'package:equatable/equatable.dart';

class TvModel extends Equatable {
  TvModel({
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    // required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.firstAirDate,
    required this.name,
    required this.originalName,
    required this.voteAverage,
    required this.voteCount,
    // required this.originCountry,
    // required this.originalLanguage,
  });

  final String? backdropPath;
  final List<int> genreIds;
  final int id;
  // final String? originalTitle;
  final String overview;
  final double? popularity;
  final String? posterPath;
  final String? firstAirDate;
  final String? name;
  final String? originalName;
  final double voteAverage;
  final int voteCount;
  // final List<String>? originCountry;
  // final String? originalLanguage;

  factory TvModel.fromJson(Map<String, dynamic> json) => TvModel(
        backdropPath: json["backdrop_path"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        // originalTitle: json["original_title"],
        overview: json["overview"],
        popularity: json["popularity"].toDouble(),
        posterPath: json["poster_path"],
        firstAirDate: json["first_air_date"],
        name: json["name"],
        originalName: json["original_name"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
        // originCountry: List<String>.from(json['origin_country'].map((x) => x)),
        // originalLanguage: json['original_language'],
      );

  Map<String, dynamic> toJson() => {
        "backdrop_path": backdropPath,
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "id": id,
        // "original_title": originalTitle,
        "overview": overview,
        "popularity": popularity,
        "poster_path": posterPath,
        "first_air_date": firstAirDate,
        "name": name,
        "original_name": originalName,
        "vote_average": voteAverage,
        "vote_count": voteCount,
        // "origin_country": originCountry,
        // "original_language": originalLanguage,
      };

  Tv toEntity() {
    return Tv(
      backdropPath: this.backdropPath,
      genreIds: this.genreIds,
      id: this.id,
      // originalTitle: this.originalTitle,
      overview: this.overview,
      popularity: this.popularity,
      posterPath: this.posterPath,
      firstAirDate: this.firstAirDate,
      name: this.name,
      originalName: this.originalName,
      voteAverage: this.voteAverage,
      voteCount: this.voteCount,
      // originCountry: this.originCountry,
      // originalLanguage: this.originalLanguage,
    );
  }

  @override
  List<Object?> get props => [
        backdropPath,
        genreIds,
        id,
        // originalTitle,
        overview,
        popularity,
        posterPath,
        firstAirDate,
        name,
        originalName,
        voteAverage,
        voteCount,
        // originCountry,
        // originalLanguage,
      ];
}
