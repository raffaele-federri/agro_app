import 'package:freezed_annotation/freezed_annotation.dart';

import 'city.dart';

part 'region.freezed.dart';

part 'region.g.dart';

@freezed
class Region with _$Region {
  const factory Region({
    @JsonKey(name: 'name_en') required String? nameEn,
    @JsonKey(name: 'name_ru') required String? nameRu,
    @JsonKey(name: 'name_uz') required String? nameUz,
    @JsonKey(name: 'country_id') required int? countryId,
    required int? id,
    required List<City>? regions,
  }) = _Region;

  factory Region.fromJson(Map<String, Object?> json) => _$RegionFromJson(json);
}
