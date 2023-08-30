// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContactsResponse _$$_ContactsResponseFromJson(Map<String, dynamic> json) =>
    _$_ContactsResponse(
      status: json['status'] as String,
      detail: json['detail'] as String,
      data: ContactsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ContactsResponseToJson(_$_ContactsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'detail': instance.detail,
      'data': instance.data,
    };
