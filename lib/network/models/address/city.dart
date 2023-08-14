import 'package:freezed_annotation/freezed_annotation.dart';

import 'district.dart';

part 'city.g.dart';

@JsonSerializable()
class City {
  @JsonKey(name: 'name_en')
  final String? nameEn;
  @JsonKey(name: 'name_ru')
  final String? nameRu;
  @JsonKey(name: 'name_uz')
  final String? nameUz;
  final int? id;
  @JsonKey(name: 'region_id')
  final int? regionId;
  final List<District>? districts;

  bool get isValid =>
      nameUz != null &&
      nameEn != null &&
      nameRu != null &&
      id != null &&
      regionId != null &&
      districts != null;

  City get validCity {
    List<District> validDistricts = [];
    for (var district in districts!) {
      if (district.isValid) {
        // print('${district.nameUz} IS VALID DISTRICT');
        validDistricts.add(district);
        // print('${validDistricts.map((e) => e.nameUz)} IS VALID DISTRICT');

      }

    }
    return City(
      id: id,
      nameEn: nameEn,
      nameRu: nameRu,
      nameUz: nameUz,
      regionId: regionId,
      districts: validDistricts,
      // districts?.where((element) => element.isValid).toList(),
    );
  }

  City({
    required this.nameEn,
    required this.nameRu,
    required this.nameUz,
    required this.id,
    required this.districts,
    required this.regionId,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
