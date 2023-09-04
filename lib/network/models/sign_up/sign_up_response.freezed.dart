// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) {
  return _SignUpResponse.fromJson(json);
}

/// @nodoc
mixin _$SignUpResponse {
  String get status => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  SignUpData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpResponseCopyWith<SignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseCopyWith<$Res> {
  factory $SignUpResponseCopyWith(
          SignUpResponse value, $Res Function(SignUpResponse) then) =
      _$SignUpResponseCopyWithImpl<$Res, SignUpResponse>;
  @useResult
  $Res call({String status, String detail, SignUpData data});

  $SignUpDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SignUpResponseCopyWithImpl<$Res, $Val extends SignUpResponse>
    implements $SignUpResponseCopyWith<$Res> {
  _$SignUpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? detail = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignUpData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SignUpDataCopyWith<$Res> get data {
    return $SignUpDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SignUpResponseCopyWith<$Res>
    implements $SignUpResponseCopyWith<$Res> {
  factory _$$_SignUpResponseCopyWith(
          _$_SignUpResponse value, $Res Function(_$_SignUpResponse) then) =
      __$$_SignUpResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String detail, SignUpData data});

  @override
  $SignUpDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SignUpResponseCopyWithImpl<$Res>
    extends _$SignUpResponseCopyWithImpl<$Res, _$_SignUpResponse>
    implements _$$_SignUpResponseCopyWith<$Res> {
  __$$_SignUpResponseCopyWithImpl(
      _$_SignUpResponse _value, $Res Function(_$_SignUpResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? detail = null,
    Object? data = null,
  }) {
    return _then(_$_SignUpResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SignUpData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpResponse implements _SignUpResponse {
  const _$_SignUpResponse(
      {required this.status, required this.detail, required this.data});

  factory _$_SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpResponseFromJson(json);

  @override
  final String status;
  @override
  final String detail;
  @override
  final SignUpData data;

  @override
  String toString() {
    return 'SignUpResponse(status: $status, detail: $detail, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, detail, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpResponseCopyWith<_$_SignUpResponse> get copyWith =>
      __$$_SignUpResponseCopyWithImpl<_$_SignUpResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpResponseToJson(
      this,
    );
  }
}

abstract class _SignUpResponse implements SignUpResponse {
  const factory _SignUpResponse(
      {required final String status,
      required final String detail,
      required final SignUpData data}) = _$_SignUpResponse;

  factory _SignUpResponse.fromJson(Map<String, dynamic> json) =
      _$_SignUpResponse.fromJson;

  @override
  String get status;
  @override
  String get detail;
  @override
  SignUpData get data;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpResponseCopyWith<_$_SignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
