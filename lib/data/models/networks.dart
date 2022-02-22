import 'package:ditonton/domain/entities/networks.dart';
import 'package:equatable/equatable.dart';

class NetworksModels extends Equatable {
  NetworksModels({
    required this.name,
    required this.id,
    required this.logoPath,
    required this.originCountry,
  });

  final String name;
  final int id;
  final String logoPath;
  final String originCountry;

  factory NetworksModels.fromJson(Map<String, dynamic> json) => NetworksModels(
        name: json["name"],
        id: json["id"],
        logoPath: json["logo_path"],
        originCountry: json["origin_country"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "logo_path": logoPath,
        "origin_country": originCountry,
      };

  Networks toEntity() {
    return Networks(
      name: this.name,
      id: this.id,
      logoPath: this.logoPath,
      originCountry: this.originCountry,
    );
  }

  @override
  List<Object?> get props => [
        name,
        id,
        logoPath,
        originCountry,
      ];
}
