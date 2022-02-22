import 'package:ditonton/domain/entities/created_by.dart';
import 'package:equatable/equatable.dart';

class CreatedByModel extends Equatable {
  CreatedByModel({
    required this.creditId,
    required this.name,
    required this.gender,
    required this.profilePath,
    required this.id,
  });

  final String id;
  final String creditId;
  final String name;
  final double gender;
  final String profilePath;

  factory CreatedByModel.fromJson(Map<String, dynamic> json) => CreatedByModel(
      creditId: json["credit_id"],
      name: json["name"],
      gender: json["gender"],
      profilePath: json["profile_path"],
      id: json["id"]);

  Map<String, dynamic> toJson() => {
        "credit_id": creditId,
        "name": name,
        "gender": gender,
        "profile_path": profilePath,
        "id": id,
      };

  CreatedBy toEntity() {
    return CreatedBy(
        creditId: this.creditId,
        name: this.name,
        gender: this.gender,
        profilePath: this.profilePath,
        id: this.id);
  }

  @override
  List<Object?> get props => [
        creditId,
        name,
        id,
        gender,
        profilePath,
      ];
}
