import 'package:agro_app/network/models/address/region.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'address_data.freezed.dart';
part 'address_data.g.dart';

@freezed
class AddressData with _$AddressData {
  const factory AddressData({
    @JsonKey(name: 'name_en') required String? nameEn,
    @JsonKey(name: 'name_ru') required String? nameRu,
    @JsonKey(name: 'name_uz') required String? nameUz,
    required int? id,
    required List<Region>? regions,

  }) = _AddressData;

  factory AddressData.fromJson(Map<String, Object?> json) =>
      _$AddressDataFromJson(json);
}
