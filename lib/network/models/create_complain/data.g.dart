// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComplainData _$$_ComplainDataFromJson(Map<String, dynamic> json) =>
    _$_ComplainData(
      userId: json['user_id'] as int,
      complainStatusId: json['complain_status_id'] as int,
      title: json['title'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      rate: json['rate'] as int,
      actionData: json['action_date'] as String?,
      id: json['id'] as int,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_ComplainDataToJson(_$_ComplainData instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'complain_status_id': instance.complainStatusId,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'rate': instance.rate,
      'action_date': instance.actionData,
      'id': instance.id,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
