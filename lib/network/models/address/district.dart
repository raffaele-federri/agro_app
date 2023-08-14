import 'package:freezed_annotation/freezed_annotation.dart';

part 'district.g.dart';

@JsonSerializable()
class District {
  @JsonKey(name: 'name_en')
  final String? nameEn;
  @JsonKey(name: 'name_ru')
  final String? nameRu;
  @JsonKey(name: 'name_uz')
  final String? nameUz;
  final int? id;
  @JsonKey(name: 'city_id')
  final int? cityId;

  bool get isValid =>
      nameUz != null &&
      nameEn != null &&
      nameRu != null &&
      id != null &&
      cityId != null;

  District({
    required this.nameEn,
    required this.nameRu,
    required this.nameUz,
    required this.id,
    required this.cityId,
  });

  factory District.fromJson(Map<String, dynamic> json) =>
      _$DistrictFromJson(json);
}
