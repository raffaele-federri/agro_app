// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rights_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RightsResponse _$$_RightsResponseFromJson(Map<String, dynamic> json) =>
    _$_RightsResponse(
      status: json['status'] as String,
      detail: json['detail'] as String,
      data: RightsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RightsResponseToJson(_$_RightsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'detail': instance.detail,
      'data': instance.data,
    };
