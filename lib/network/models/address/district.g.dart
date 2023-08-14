// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

District _$DistrictFromJson(Map<String, dynamic> json) => District(
      nameEn: json['name_en'] as String?,
      nameRu: json['name_ru'] as String?,
      nameUz: json['name_uz'] as String?,
      id: json['id'] as int?,
      cityId: json['city_id'] as int?,
    );

Map<String, dynamic> _$DistrictToJson(District instance) => <String, dynamic>{
      'name_en': instance.nameEn,
      'name_ru': instance.nameRu,
      'name_uz': instance.nameUz,
      'id': instance.id,
      'city_id': instance.cityId,
    };
