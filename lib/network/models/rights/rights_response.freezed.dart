// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rights_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RightsResponse _$RightsResponseFromJson(Map<String, dynamic> json) {
  return _RightsResponse.fromJson(json);
}

/// @nodoc
mixin _$RightsResponse {
  String get status => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  RightsData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RightsResponseCopyWith<RightsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RightsResponseCopyWith<$Res> {
  factory $RightsResponseCopyWith(
          RightsResponse value, $Res Function(RightsResponse) then) =
      _$RightsResponseCopyWithImpl<$Res, RightsResponse>;
  @useResult
  $Res call({String status, String detail, RightsData data});

  $RightsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$RightsResponseCopyWithImpl<$Res, $Val extends RightsResponse>
    implements $RightsResponseCopyWith<$Res> {
  _$RightsResponseCopyWithImpl(this._value, this._then);

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
              as RightsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RightsDataCopyWith<$Res> get data {
    return $RightsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RightsResponseCopyWith<$Res>
    implements $RightsResponseCopyWith<$Res> {
  factory _$$_RightsResponseCopyWith(
          _$_RightsResponse value, $Res Function(_$_RightsResponse) then) =
      __$$_RightsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String detail, RightsData data});

  @override
  $RightsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_RightsResponseCopyWithImpl<$Res>
    extends _$RightsResponseCopyWithImpl<$Res, _$_RightsResponse>
    implements _$$_RightsResponseCopyWith<$Res> {
  __$$_RightsResponseCopyWithImpl(
      _$_RightsResponse _value, $Res Function(_$_RightsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? detail = null,
    Object? data = null,
  }) {
    return _then(_$_RightsResponse(
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
              as RightsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RightsResponse implements _RightsResponse {
  const _$_RightsResponse(
      {required this.status, required this.detail, required this.data});

  factory _$_RightsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RightsResponseFromJson(json);

  @override
  final String status;
  @override
  final String detail;
  @override
  final RightsData data;

  @override
  String toString() {
    return 'RightsResponse(status: $status, detail: $detail, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RightsResponse &&
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
  _$$_RightsResponseCopyWith<_$_RightsResponse> get copyWith =>
      __$$_RightsResponseCopyWithImpl<_$_RightsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RightsResponseToJson(
      this,
    );
  }
}

abstract class _RightsResponse implements RightsResponse {
  const factory _RightsResponse(
      {required final String status,
      required final String detail,
      required final RightsData data}) = _$_RightsResponse;

  factory _RightsResponse.fromJson(Map<String, dynamic> json) =
      _$_RightsResponse.fromJson;

  @override
  String get status;
  @override
  String get detail;
  @override
  RightsData get data;
  @override
  @JsonKey(ignore: true)
  _$$_RightsResponseCopyWith<_$_RightsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
