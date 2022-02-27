import 'package:ditonton/data/models/tv_model.dart';
import 'package:ditonton/domain/entities/tv.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tTvModel = TvModel(
    backdropPath: "backdropPath",
    genreIds: [18, 9648],
    id: 31917,
    overview: "overview",
    popularity: 47.432451,
    posterPath: "posterPath",
    firstAirDate: "firstAirDate",
    name: "name",
    originalName: "originalName",
    voteAverage: 7.5,
    voteCount: 287,
  );

  final tTv = Tv(
    backdropPath: "backdropPath",
    genreIds: [18, 9648],
    id: 31917,
    overview: "overview",
    popularity: 47.432451,
    posterPath: "posterPath",
    firstAirDate: "firstAirDate",
    name: "name",
    originalName: "originalName",
    voteAverage: 7.5,
    voteCount: 287,
  );

  test('should be a subclass of Tv entity', () async {
    final result = tTvModel.toEntity();
    expect(result, tTv);
  });
}
