// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComplainData _$ComplainDataFromJson(Map<String, dynamic> json) {
  return _ComplainData.fromJson(json);
}

/// @nodoc
mixin _$ComplainData {
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'complain_status_id')
  int get complainStatusId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int get rate => throw _privateConstructorUsedError;
  @JsonKey(name: 'action_date')
  String? get actionData => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComplainDataCopyWith<ComplainData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplainDataCopyWith<$Res> {
  factory $ComplainDataCopyWith(
          ComplainData value, $Res Function(ComplainData) then) =
      _$ComplainDataCopyWithImpl<$Res, ComplainData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'complain_status_id') int complainStatusId,
      String? title,
      String? description,
      String? image,
      int rate,
      @JsonKey(name: 'action_date') String? actionData,
      int id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$ComplainDataCopyWithImpl<$Res, $Val extends ComplainData>
    implements $ComplainDataCopyWith<$Res> {
  _$ComplainDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? complainStatusId = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? rate = null,
    Object? actionData = freezed,
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      complainStatusId: null == complainStatusId
          ? _value.complainStatusId
          : complainStatusId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      actionData: freezed == actionData
          ? _value.actionData
          : actionData // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComplainDataCopyWith<$Res>
    implements $ComplainDataCopyWith<$Res> {
  factory _$$_ComplainDataCopyWith(
          _$_ComplainData value, $Res Function(_$_ComplainData) then) =
      __$$_ComplainDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'complain_status_id') int complainStatusId,
      String? title,
      String? description,
      String? image,
      int rate,
      @JsonKey(name: 'action_date') String? actionData,
      int id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$_ComplainDataCopyWithImpl<$Res>
    extends _$ComplainDataCopyWithImpl<$Res, _$_ComplainData>
    implements _$$_ComplainDataCopyWith<$Res> {
  __$$_ComplainDataCopyWithImpl(
      _$_ComplainData _value, $Res Function(_$_ComplainData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? complainStatusId = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? rate = null,
    Object? actionData = freezed,
    Object? id = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_ComplainData(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      complainStatusId: null == complainStatusId
          ? _value.complainStatusId
          : complainStatusId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      actionData: freezed == actionData
          ? _value.actionData
          : actionData // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ComplainData implements _ComplainData {
  const _$_ComplainData(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'complain_status_id') required this.complainStatusId,
      required this.title,
      required this.description,
      required this.image,
      required this.rate,
      @JsonKey(name: 'action_date') required this.actionData,
      required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$_ComplainData.fromJson(Map<String, dynamic> json) =>
      _$$_ComplainDataFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'complain_status_id')
  final int complainStatusId;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final int rate;
  @override
  @JsonKey(name: 'action_date')
  final String? actionData;
  @override
  final int id;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'ComplainData(userId: $userId, complainStatusId: $complainStatusId, title: $title, description: $description, image: $image, rate: $rate, actionData: $actionData, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComplainData &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.complainStatusId, complainStatusId) ||
                other.complainStatusId == complainStatusId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.actionData, actionData) ||
                other.actionData == actionData) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, complainStatusId, title,
      description, image, rate, actionData, id, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComplainDataCopyWith<_$_ComplainData> get copyWith =>
      __$$_ComplainDataCopyWithImpl<_$_ComplainData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComplainDataToJson(
      this,
    );
  }
}

abstract class _ComplainData implements ComplainData {
  const factory _ComplainData(
      {@JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'complain_status_id') required final int complainStatusId,
      required final String? title,
      required final String? description,
      required final String? image,
      required final int rate,
      @JsonKey(name: 'action_date') required final String? actionData,
      required final int id,
      @JsonKey(name: 'created_at') required final String? createdAt,
      @JsonKey(name: 'updated_at')
      required final String? updatedAt}) = _$_ComplainData;

  factory _ComplainData.fromJson(Map<String, dynamic> json) =
      _$_ComplainData.fromJson;

  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'complain_status_id')
  int get complainStatusId;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get image;
  @override
  int get rate;
  @override
  @JsonKey(name: 'action_date')
  String? get actionData;
  @override
  int get id;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ComplainDataCopyWith<_$_ComplainData> get copyWith =>
      throw _privateConstructorUsedError;
}
