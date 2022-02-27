import 'dart:convert';

import 'package:ditonton/data/models/tv_model.dart';
import 'package:ditonton/data/models/tv_response.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../json_reader.dart';

void main() {
  final tTvModel = TvModel(
    backdropPath: "/path.jpg",
    genreIds: [18, 9648],
    id: 31917,
    overview: "Overview",
    popularity: 47.432451,
    posterPath: "/path.jpg",
    firstAirDate: "2010-06-08",
    name: "Name",
    originalName: "Original Name",
    voteAverage: 7.5,
    voteCount: 287,
  );
  final tTvResponseModel = TvResponse(tvList: <TvModel>[tTvModel]);
  group('fromJson', () {
    test('should return a valid model from JSON', () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(readJson('dummy_data/now_playing_tv.json'));
      // act
      final result = TvResponse.fromJson(jsonMap);
      // assert
      expect(result, tTvResponseModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing proper data', () async {
      // arrange

      // act
      final result = tTvResponseModel.toJson();
      // assert
      final expectedJsonMap = {
        "results": [
          {
            "backdrop_path": "/path.jpg",
            "genre_ids": [18, 9648],
            "id": 31917,
            "overview": "Overview",
            "popularity": 47.432451,
            "poster_path": "/path.jpg",
            "first_air_date": "2010-06-08",
            "name": "Name",
            "original_name": "Original Name",
            "vote_average": 7.5,
            "vote_count": 287,
          }
        ]
      };
      expect(result, expectedJsonMap);
    });
  });
}
