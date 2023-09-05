// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'right.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Right _$$_RightFromJson(Map<String, dynamic> json) => _$_Right(
      id: json['id'] as int,
      titleRu: json['title_ru'] as String?,
      titleUz: json['title_uz'] as String?,
      titleEn: json['title_en'] as String?,
      shortDescriptionRu: json['short_description_ru'] as String?,
      shortDescriptionUz: json['short_description_uz'] as String?,
      shortDescriptionEn: json['short_description_en'] as String?,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RightToJson(_$_Right instance) => <String, dynamic>{
      'id': instance.id,
      'title_ru': instance.titleRu,
      'title_uz': instance.titleUz,
      'title_en': instance.titleEn,
      'short_description_ru': instance.shortDescriptionRu,
      'short_description_uz': instance.shortDescriptionUz,
      'short_description_en': instance.shortDescriptionEn,
      'categories': instance.categories,
    };
