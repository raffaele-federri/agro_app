import 'package:agro_app/network/models/address/region.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_data.g.dart';

@JsonSerializable()
class AddressData {
  @JsonKey(name: 'name_en')
  final String? nameEn;
  @JsonKey(name: 'name_ru')
  final String? nameRu;
  @JsonKey(name: 'name_uz')
  final String? nameUz;
  final int? id;
  final List<Region>? regions;

  bool get isValid =>
      nameUz != null &&
      nameEn != null &&
      nameRu != null &&
      id != null &&
      regions != null;

  AddressData get validRAddressData {
    List<Region> validRegions = [];
    for (var region in regions!) {
      if (region.isValid) {
        validRegions.add(region.validRegion);
      }

    }

    return AddressData(
      id: id,
      nameEn: nameEn,
      nameRu: nameRu,
      nameUz: nameUz,
      regions: validRegions,
    );
  }

  AddressData({
    required this.nameEn,
    required this.nameRu,
    required this.nameUz,
    required this.id,
    required this.regions,
  });

  factory AddressData.fromJson(Map<String, dynamic> json) =>
      _$AddressDataFromJson(json);
}
