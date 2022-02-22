import 'package:equatable/equatable.dart';

class CreatedBy extends Equatable {
  CreatedBy({
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

  @override
  List<Object?> get props => [
        creditId,
        id,
        name,
        gender,
        profilePath,
      ];
}
