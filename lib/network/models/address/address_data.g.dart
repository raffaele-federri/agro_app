// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressData _$AddressDataFromJson(Map<String, dynamic> json) => AddressData(
      nameEn: json['name_en'] as String?,
      nameRu: json['name_ru'] as String?,
      nameUz: json['name_uz'] as String?,
      id: json['id'] as int?,
      regions: (json['regions'] as List<dynamic>?)
          ?.map((e) => Region.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddressDataToJson(AddressData instance) =>
    <String, dynamic>{
      'name_en': instance.nameEn,
      'name_ru': instance.nameRu,
      'name_uz': instance.nameUz,
      'id': instance.id,
      'regions': instance.regions,
    };
