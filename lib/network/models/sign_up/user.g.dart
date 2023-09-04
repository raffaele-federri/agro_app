// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      username: json['username'] as String,
      phoneNumber: json['phone_number'] as String,
      password: json['password'] as String?,
      age: json['age'] as int,
      address: json['address'] as String,
      genderId: json['gender_id'] as int,
      statusId: json['status_id'] as int,
      cityId: json['city_id'] as int,
      districtId: json['district_id'] as int,
      deviceType: json['device_type'] as String,
      id: json['id'] as int,
      registrationAt: json['registration_at'] as String?,
      lastLoginAt: json['last_login_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'username': instance.username,
      'phone_number': instance.phoneNumber,
      'password': instance.password,
      'age': instance.age,
      'address': instance.address,
      'gender_id': instance.genderId,
      'status_id': instance.statusId,
      'city_id': instance.cityId,
      'district_id': instance.districtId,
      'device_type': instance.deviceType,
      'id': instance.id,
      'registration_at': instance.registrationAt,
      'last_login_at': instance.lastLoginAt,
      'deleted_at': instance.deletedAt,
    };
