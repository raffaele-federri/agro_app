// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender_id')
  int get genderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_id')
  int get statusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_id')
  int get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'district_id')
  int get districtId => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_type')
  String get deviceType => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'registration_at')
  String? get registrationAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_login_at')
  String? get lastLoginAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  String? get deletedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String username,
      @JsonKey(name: 'phone_number') String phoneNumber,
      String? password,
      int age,
      String address,
      @JsonKey(name: 'gender_id') int genderId,
      @JsonKey(name: 'status_id') int statusId,
      @JsonKey(name: 'city_id') int cityId,
      @JsonKey(name: 'district_id') int districtId,
      @JsonKey(name: 'device_type') String deviceType,
      int id,
      @JsonKey(name: 'registration_at') String? registrationAt,
      @JsonKey(name: 'last_login_at') String? lastLoginAt,
      @JsonKey(name: 'deleted_at') String? deletedAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? phoneNumber = null,
    Object? password = freezed,
    Object? age = null,
    Object? address = null,
    Object? genderId = null,
    Object? statusId = null,
    Object? cityId = null,
    Object? districtId = null,
    Object? deviceType = null,
    Object? id = null,
    Object? registrationAt = freezed,
    Object? lastLoginAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      genderId: null == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as int,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      districtId: null == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      registrationAt: freezed == registrationAt
          ? _value.registrationAt
          : registrationAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      @JsonKey(name: 'phone_number') String phoneNumber,
      String? password,
      int age,
      String address,
      @JsonKey(name: 'gender_id') int genderId,
      @JsonKey(name: 'status_id') int statusId,
      @JsonKey(name: 'city_id') int cityId,
      @JsonKey(name: 'district_id') int districtId,
      @JsonKey(name: 'device_type') String deviceType,
      int id,
      @JsonKey(name: 'registration_at') String? registrationAt,
      @JsonKey(name: 'last_login_at') String? lastLoginAt,
      @JsonKey(name: 'deleted_at') String? deletedAt});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? phoneNumber = null,
    Object? password = freezed,
    Object? age = null,
    Object? address = null,
    Object? genderId = null,
    Object? statusId = null,
    Object? cityId = null,
    Object? districtId = null,
    Object? deviceType = null,
    Object? id = null,
    Object? registrationAt = freezed,
    Object? lastLoginAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(_$_User(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      genderId: null == genderId
          ? _value.genderId
          : genderId // ignore: cast_nullable_to_non_nullable
              as int,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: null == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      districtId: null == districtId
          ? _value.districtId
          : districtId // ignore: cast_nullable_to_non_nullable
              as int,
      deviceType: null == deviceType
          ? _value.deviceType
          : deviceType // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      registrationAt: freezed == registrationAt
          ? _value.registrationAt
          : registrationAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLoginAt: freezed == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.username,
      @JsonKey(name: 'phone_number') required this.phoneNumber,
      required this.password,
      required this.age,
      required this.address,
      @JsonKey(name: 'gender_id') required this.genderId,
      @JsonKey(name: 'status_id') required this.statusId,
      @JsonKey(name: 'city_id') required this.cityId,
      @JsonKey(name: 'district_id') required this.districtId,
      @JsonKey(name: 'device_type') required this.deviceType,
      required this.id,
      @JsonKey(name: 'registration_at') required this.registrationAt,
      @JsonKey(name: 'last_login_at') required this.lastLoginAt,
      @JsonKey(name: 'deleted_at') required this.deletedAt});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String username;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  final String? password;
  @override
  final int age;
  @override
  final String address;
  @override
  @JsonKey(name: 'gender_id')
  final int genderId;
  @override
  @JsonKey(name: 'status_id')
  final int statusId;
  @override
  @JsonKey(name: 'city_id')
  final int cityId;
  @override
  @JsonKey(name: 'district_id')
  final int districtId;
  @override
  @JsonKey(name: 'device_type')
  final String deviceType;
  @override
  final int id;
  @override
  @JsonKey(name: 'registration_at')
  final String? registrationAt;
  @override
  @JsonKey(name: 'last_login_at')
  final String? lastLoginAt;
  @override
  @JsonKey(name: 'deleted_at')
  final String? deletedAt;

  @override
  String toString() {
    return 'User(username: $username, phoneNumber: $phoneNumber, password: $password, age: $age, address: $address, genderId: $genderId, statusId: $statusId, cityId: $cityId, districtId: $districtId, deviceType: $deviceType, id: $id, registrationAt: $registrationAt, lastLoginAt: $lastLoginAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.genderId, genderId) ||
                other.genderId == genderId) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.districtId, districtId) ||
                other.districtId == districtId) &&
            (identical(other.deviceType, deviceType) ||
                other.deviceType == deviceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.registrationAt, registrationAt) ||
                other.registrationAt == registrationAt) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      phoneNumber,
      password,
      age,
      address,
      genderId,
      statusId,
      cityId,
      districtId,
      deviceType,
      id,
      registrationAt,
      lastLoginAt,
      deletedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String username,
      @JsonKey(name: 'phone_number') required final String phoneNumber,
      required final String? password,
      required final int age,
      required final String address,
      @JsonKey(name: 'gender_id') required final int genderId,
      @JsonKey(name: 'status_id') required final int statusId,
      @JsonKey(name: 'city_id') required final int cityId,
      @JsonKey(name: 'district_id') required final int districtId,
      @JsonKey(name: 'device_type') required final String deviceType,
      required final int id,
      @JsonKey(name: 'registration_at') required final String? registrationAt,
      @JsonKey(name: 'last_login_at') required final String? lastLoginAt,
      @JsonKey(name: 'deleted_at') required final String? deletedAt}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get username;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  String? get password;
  @override
  int get age;
  @override
  String get address;
  @override
  @JsonKey(name: 'gender_id')
  int get genderId;
  @override
  @JsonKey(name: 'status_id')
  int get statusId;
  @override
  @JsonKey(name: 'city_id')
  int get cityId;
  @override
  @JsonKey(name: 'district_id')
  int get districtId;
  @override
  @JsonKey(name: 'device_type')
  String get deviceType;
  @override
  int get id;
  @override
  @JsonKey(name: 'registration_at')
  String? get registrationAt;
  @override
  @JsonKey(name: 'last_login_at')
  String? get lastLoginAt;
  @override
  @JsonKey(name: 'deleted_at')
  String? get deletedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
