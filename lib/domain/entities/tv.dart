import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Tv extends Equatable {
  Tv({
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.firstAirDate,
    required this.name,
    required this.originalName,
    required this.voteAverage,
    required this.voteCount,
    required this.originCountry,
    required this.originalLanguage,
  });

  Tv.watchlist(
      {required this.id,
      required this.overview,
      required this.posterPath,
      required this.name});

  String? backdropPath;
  List<int>? genreIds;
  int id;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? firstAirDate;
  String? name;
  String? originalName;
  double? voteAverage;
  int? voteCount;
  List<String>? originCountry;
  String? originalLanguage;

  @override
  List<Object?> get props => [
        backdropPath,
        genreIds,
        id,
        originalTitle,
        overview,
        popularity,
        posterPath,
        firstAirDate,
        name,
        originalName,
        voteAverage,
        voteCount,
        originCountry,
        originalLanguage,
      ];
}
