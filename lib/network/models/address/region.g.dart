// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Region _$RegionFromJson(Map<String, dynamic> json) => Region(
      nameEn: json['name_en'] as String?,
      nameRu: json['name_ru'] as String?,
      nameUz: json['name_uz'] as String?,
      id: json['id'] as int?,
      cities: (json['cities'] as List<dynamic>?)
          ?.map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList(),
      countryId: json['country_id'] as int?,
    );

Map<String, dynamic> _$RegionToJson(Region instance) => <String, dynamic>{
      'name_en': instance.nameEn,
      'name_ru': instance.nameRu,
      'name_uz': instance.nameUz,
      'id': instance.id,
      'country_id': instance.countryId,
      'cities': instance.cities,
    };
