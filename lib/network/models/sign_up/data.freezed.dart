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

SignUpData _$SignUpDataFromJson(Map<String, dynamic> json) {
  return _SignUpData.fromJson(json);
}

/// @nodoc
mixin _$SignUpData {
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpDataCopyWith<SignUpData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpDataCopyWith<$Res> {
  factory $SignUpDataCopyWith(
          SignUpData value, $Res Function(SignUpData) then) =
      _$SignUpDataCopyWithImpl<$Res, SignUpData>;
  @useResult
  $Res call({User? user, @JsonKey(name: 'access_token') String token});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$SignUpDataCopyWithImpl<$Res, $Val extends SignUpData>
    implements $SignUpDataCopyWith<$Res> {
  _$SignUpDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignUpDataCopyWith<$Res>
    implements $SignUpDataCopyWith<$Res> {
  factory _$$_SignUpDataCopyWith(
          _$_SignUpData value, $Res Function(_$_SignUpData) then) =
      __$$_SignUpDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, @JsonKey(name: 'access_token') String token});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_SignUpDataCopyWithImpl<$Res>
    extends _$SignUpDataCopyWithImpl<$Res, _$_SignUpData>
    implements _$$_SignUpDataCopyWith<$Res> {
  __$$_SignUpDataCopyWithImpl(
      _$_SignUpData _value, $Res Function(_$_SignUpData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? token = null,
  }) {
    return _then(_$_SignUpData(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpData implements _SignUpData {
  const _$_SignUpData(
      {required this.user, @JsonKey(name: 'access_token') required this.token});

  factory _$_SignUpData.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpDataFromJson(json);

  @override
  final User? user;
  @override
  @JsonKey(name: 'access_token')
  final String token;

  @override
  String toString() {
    return 'SignUpData(user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpData &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpDataCopyWith<_$_SignUpData> get copyWith =>
      __$$_SignUpDataCopyWithImpl<_$_SignUpData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpDataToJson(
      this,
    );
  }
}

abstract class _SignUpData implements SignUpData {
  const factory _SignUpData(
          {required final User? user,
          @JsonKey(name: 'access_token') required final String token}) =
      _$_SignUpData;

  factory _SignUpData.fromJson(Map<String, dynamic> json) =
      _$_SignUpData.fromJson;

  @override
  User? get user;
  @override
  @JsonKey(name: 'access_token')
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpDataCopyWith<_$_SignUpData> get copyWith =>
      throw _privateConstructorUsedError;
}
