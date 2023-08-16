// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkingStatusResponse _$$_WorkingStatusResponseFromJson(
        Map<String, dynamic> json) =>
    _$_WorkingStatusResponse(
      status: json['status'] as String,
      detail: json['detail'] as String,
      data: StatusData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WorkingStatusResponseToJson(
        _$_WorkingStatusResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'detail': instance.detail,
      'data': instance.data,
    };
