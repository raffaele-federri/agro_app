// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

City _$CityFromJson(Map<String, dynamic> json) => City(
      nameEn: json['name_en'] as String?,
      nameRu: json['name_ru'] as String?,
      nameUz: json['name_uz'] as String?,
      id: json['id'] as int?,
      districts: (json['districts'] as List<dynamic>?)
          ?.map((e) => District.fromJson(e as Map<String, dynamic>))
          .toList(),
      regionId: json['region_id'] as int?,
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'name_en': instance.nameEn,
      'name_ru': instance.nameRu,
      'name_uz': instance.nameUz,
      'id': instance.id,
      'region_id': instance.regionId,
      'districts': instance.districts,
    };
