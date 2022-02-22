import 'package:ditonton/domain/entities/genre.dart';
import 'package:equatable/equatable.dart';

class TvDetail extends Equatable {
  TvDetail({
    required this.episodeRunTime,
    required this.genres,
    required this.backdropPath,
    required this.id,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.firstAirDate,
    required this.name,
    required this.originalName,
    required this.voteAverage,
    required this.voteCount,
    required this.originalLanguage,
    required this.numberOfEpisodes,
    required this.numberOfSeasons,
  });

  final String? backdropPath;
  final int id;
  final int? numberOfEpisodes;
  final int? numberOfSeasons;
  final List<dynamic> episodeRunTime;
  final List<Genre> genres;
  final String overview;
  final double? popularity;
  final String? posterPath;
  final String? firstAirDate;
  final String? name;
  final String? originalName;
  final double? voteAverage;
  final int? voteCount;
  final String? originalLanguage;

  @override
  List<Object?> get props => [
        numberOfEpisodes,
        numberOfSeasons,
        backdropPath,
        id,
        overview,
        popularity,
        posterPath,
        firstAirDate,
        name,
        originalName,
        voteAverage,
        voteCount,
        originalLanguage,
      ];
}
