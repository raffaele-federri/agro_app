// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpResponse _$$_SignUpResponseFromJson(Map<String, dynamic> json) =>
    _$_SignUpResponse(
      status: json['status'] as String,
      detail: json['detail'] as String,
      data: SignUpData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SignUpResponseToJson(_$_SignUpResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'detail': instance.detail,
      'data': instance.data,
    };
