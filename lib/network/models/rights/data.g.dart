// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RightsData _$$_RightsDataFromJson(Map<String, dynamic> json) =>
    _$_RightsData(
      total: json['total'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => Right.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RightsDataToJson(_$_RightsData instance) =>
    <String, dynamic>{
      'total': instance.total,
      'items': instance.items,
    };
