import 'package:freezed_annotation/freezed_annotation.dart';

part 'district.freezed.dart';
part 'district.g.dart';

@freezed
class District with _$District {
  const factory District({
    @JsonKey(name: 'name_en') required String? nameEn,
    @JsonKey(name: 'name_ru') required String? nameRu,
    @JsonKey(name: 'name_uz') required String? nameUz,
    @JsonKey(name: 'city_id') required int? cityId,
    required int? id,

  }) = _District;

  factory District.fromJson(Map<String, Object?> json) => _$DistrictFromJson(json);
}
