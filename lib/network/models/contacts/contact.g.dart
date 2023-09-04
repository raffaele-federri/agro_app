// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Contact _$$_ContactFromJson(Map<String, dynamic> json) => _$_Contact(
      id: json['id'] as int,
      phone: json['phone'] as String,
      address: json['address'] as String,
      titleRu: json['title_ru'] as String?,
      titleUz: json['title_uz'] as String?,
      titleEn: json['title_en'] as String?,
    );

Map<String, dynamic> _$$_ContactToJson(_$_Contact instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'address': instance.address,
      'title_ru': instance.titleRu,
      'title_uz': instance.titleUz,
      'title_en': instance.titleEn,
    };
