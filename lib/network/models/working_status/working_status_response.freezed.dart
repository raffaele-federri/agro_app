// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_status_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkingStatusResponse _$WorkingStatusResponseFromJson(
    Map<String, dynamic> json) {
  return _WorkingStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$WorkingStatusResponse {
  String get status => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  StatusData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkingStatusResponseCopyWith<WorkingStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingStatusResponseCopyWith<$Res> {
  factory $WorkingStatusResponseCopyWith(WorkingStatusResponse value,
          $Res Function(WorkingStatusResponse) then) =
      _$WorkingStatusResponseCopyWithImpl<$Res, WorkingStatusResponse>;
  @useResult
  $Res call({String status, String detail, StatusData data});

  $StatusDataCopyWith<$Res> get data;
}

/// @nodoc
class _$WorkingStatusResponseCopyWithImpl<$Res,
        $Val extends WorkingStatusResponse>
    implements $WorkingStatusResponseCopyWith<$Res> {
  _$WorkingStatusResponseCopyWithImpl(this._value, this._then);

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
              as StatusData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusDataCopyWith<$Res> get data {
    return $StatusDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WorkingStatusResponseCopyWith<$Res>
    implements $WorkingStatusResponseCopyWith<$Res> {
  factory _$$_WorkingStatusResponseCopyWith(_$_WorkingStatusResponse value,
          $Res Function(_$_WorkingStatusResponse) then) =
      __$$_WorkingStatusResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String detail, StatusData data});

  @override
  $StatusDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_WorkingStatusResponseCopyWithImpl<$Res>
    extends _$WorkingStatusResponseCopyWithImpl<$Res, _$_WorkingStatusResponse>
    implements _$$_WorkingStatusResponseCopyWith<$Res> {
  __$$_WorkingStatusResponseCopyWithImpl(_$_WorkingStatusResponse _value,
      $Res Function(_$_WorkingStatusResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? detail = null,
    Object? data = null,
  }) {
    return _then(_$_WorkingStatusResponse(
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
              as StatusData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkingStatusResponse implements _WorkingStatusResponse {
  const _$_WorkingStatusResponse(
      {required this.status, required this.detail, required this.data});

  factory _$_WorkingStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WorkingStatusResponseFromJson(json);

  @override
  final String status;
  @override
  final String detail;
  @override
  final StatusData data;

  @override
  String toString() {
    return 'WorkingStatusResponse(status: $status, detail: $detail, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkingStatusResponse &&
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
  _$$_WorkingStatusResponseCopyWith<_$_WorkingStatusResponse> get copyWith =>
      __$$_WorkingStatusResponseCopyWithImpl<_$_WorkingStatusResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkingStatusResponseToJson(
      this,
    );
  }
}

abstract class _WorkingStatusResponse implements WorkingStatusResponse {
  const factory _WorkingStatusResponse(
      {required final String status,
      required final String detail,
      required final StatusData data}) = _$_WorkingStatusResponse;

  factory _WorkingStatusResponse.fromJson(Map<String, dynamic> json) =
      _$_WorkingStatusResponse.fromJson;

  @override
  String get status;
  @override
  String get detail;
  @override
  StatusData get data;
  @override
  @JsonKey(ignore: true)
  _$$_WorkingStatusResponseCopyWith<_$_WorkingStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
