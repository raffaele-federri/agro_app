// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpData _$$_SignUpDataFromJson(Map<String, dynamic> json) =>
    _$_SignUpData(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['access_token'] as String,
    );

Map<String, dynamic> _$$_SignUpDataToJson(_$_SignUpData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'access_token': instance.token,
    };
