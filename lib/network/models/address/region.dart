import 'package:agro_app/network/models/address/city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'region.g.dart';

@JsonSerializable()
class Region {
  @JsonKey(name: 'name_en')
  final String? nameEn;
  @JsonKey(name: 'name_ru')
  final String? nameRu;
  @JsonKey(name: 'name_uz')
  final String? nameUz;
  final int? id;
  @JsonKey(name: 'country_id')
  final int? countryId;
  final List<City>? cities;

  bool get isValid =>
      nameUz != null &&
      nameEn != null &&
      nameRu != null &&
      id != null &&
      countryId != null &&
      cities != null;

  Region get validRegion {
    List<City> validCities = [];
    for (var city in cities!) {
      if (city.isValid) {
        // print('${city.nameUz} IS VALID CITY');
        validCities.add(city.validCity);
        // print('${validCities.map((e) => e.nameUz)} ARE VALID CITIES');
      }
    }

    return Region(
      id: id,
      nameEn: nameEn,
      nameRu: nameRu,
      nameUz: nameUz,
      countryId: countryId,
      cities: validCities,
    );
  }

  Region({
    required this.nameEn,
    required this.nameRu,
    required this.nameUz,
    required this.id,
    required this.cities,
    required this.countryId,
  });

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}

