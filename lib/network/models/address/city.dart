import 'package:freezed_annotation/freezed_annotation.dart';

import 'district.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City with _$City {
  const factory City({
    @JsonKey(name: 'name_en') required String? nameEn,
    @JsonKey(name: 'name_ru') required String? nameRu,
    @JsonKey(name: 'name_uz') required String? nameUz,
    @JsonKey(name: 'region_id') required int? regionId,
    required int? id,
    required List<District>? districts,
  }) = _City;

  factory City.fromJson(Map<String, Object?> json) => _$CityFromJson(json);
}
