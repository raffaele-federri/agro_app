// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatusData _$$_StatusDataFromJson(Map<String, dynamic> json) =>
    _$_StatusData(
      total: json['total'] as int?,
      items: (json['items'] as List<dynamic>)
          .map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StatusDataToJson(_$_StatusData instance) =>
    <String, dynamic>{
      'total': instance.total,
      'items': instance.items,
    };
