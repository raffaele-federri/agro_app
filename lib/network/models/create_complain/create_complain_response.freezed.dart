// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_complain_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateComplainResponse _$CreateComplainResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateComplainResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateComplainResponse {
  String get status => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  ComplainData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateComplainResponseCopyWith<CreateComplainResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateComplainResponseCopyWith<$Res> {
  factory $CreateComplainResponseCopyWith(CreateComplainResponse value,
          $Res Function(CreateComplainResponse) then) =
      _$CreateComplainResponseCopyWithImpl<$Res, CreateComplainResponse>;
  @useResult
  $Res call({String status, String detail, ComplainData data});

  $ComplainDataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateComplainResponseCopyWithImpl<$Res,
        $Val extends CreateComplainResponse>
    implements $CreateComplainResponseCopyWith<$Res> {
  _$CreateComplainResponseCopyWithImpl(this._value, this._then);

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
              as ComplainData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ComplainDataCopyWith<$Res> get data {
    return $ComplainDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateComplainResponseCopyWith<$Res>
    implements $CreateComplainResponseCopyWith<$Res> {
  factory _$$_CreateComplainResponseCopyWith(_$_CreateComplainResponse value,
          $Res Function(_$_CreateComplainResponse) then) =
      __$$_CreateComplainResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String detail, ComplainData data});

  @override
  $ComplainDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CreateComplainResponseCopyWithImpl<$Res>
    extends _$CreateComplainResponseCopyWithImpl<$Res,
        _$_CreateComplainResponse>
    implements _$$_CreateComplainResponseCopyWith<$Res> {
  __$$_CreateComplainResponseCopyWithImpl(_$_CreateComplainResponse _value,
      $Res Function(_$_CreateComplainResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? detail = null,
    Object? data = null,
  }) {
    return _then(_$_CreateComplainResponse(
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
              as ComplainData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateComplainResponse implements _CreateComplainResponse {
  const _$_CreateComplainResponse(
      {required this.status, required this.detail, required this.data});

  factory _$_CreateComplainResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreateComplainResponseFromJson(json);

  @override
  final String status;
  @override
  final String detail;
  @override
  final ComplainData data;

  @override
  String toString() {
    return 'CreateComplainResponse(status: $status, detail: $detail, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateComplainResponse &&
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
  _$$_CreateComplainResponseCopyWith<_$_CreateComplainResponse> get copyWith =>
      __$$_CreateComplainResponseCopyWithImpl<_$_CreateComplainResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateComplainResponseToJson(
      this,
    );
  }
}

abstract class _CreateComplainResponse implements CreateComplainResponse {
  const factory _CreateComplainResponse(
      {required final String status,
      required final String detail,
      required final ComplainData data}) = _$_CreateComplainResponse;

  factory _CreateComplainResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateComplainResponse.fromJson;

  @override
  String get status;
  @override
  String get detail;
  @override
  ComplainData get data;
  @override
  @JsonKey(ignore: true)
  _$$_CreateComplainResponseCopyWith<_$_CreateComplainResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
