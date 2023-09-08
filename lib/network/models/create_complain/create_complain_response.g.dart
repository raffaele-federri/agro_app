// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_complain_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateComplainResponse _$$_CreateComplainResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateComplainResponse(
      status: json['status'] as String,
      detail: json['detail'] as String,
      data: ComplainData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateComplainResponseToJson(
        _$_CreateComplainResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'detail': instance.detail,
      'data': instance.data,
    };
