// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactsData _$$_ContactsDataFromJson(Map<String, dynamic> json) =>
    _$_ContactsData(
      total: json['total'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => Contact.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ContactsDataToJson(_$_ContactsData instance) =>
    <String, dynamic>{
      'total': instance.total,
      'items': instance.items,
    };
