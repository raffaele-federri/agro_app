// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressResponse _$AddressResponseFromJson(Map<String, dynamic> json) {
  return _AddressResponse.fromJson(json);
}

/// @nodoc
mixin _$AddressResponse {
  String get status => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  List<AddressData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressResponseCopyWith<AddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressResponseCopyWith<$Res> {
  factory $AddressResponseCopyWith(
          AddressResponse value, $Res Function(AddressResponse) then) =
      _$AddressResponseCopyWithImpl<$Res, AddressResponse>;
  @useResult
  $Res call({String status, String detail, List<AddressData>? data});
}

/// @nodoc
class _$AddressResponseCopyWithImpl<$Res, $Val extends AddressResponse>
    implements $AddressResponseCopyWith<$Res> {
  _$AddressResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? detail = null,
    Object? data = freezed,
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AddressData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressResponseCopyWith<$Res>
    implements $AddressResponseCopyWith<$Res> {
  factory _$$_AddressResponseCopyWith(
          _$_AddressResponse value, $Res Function(_$_AddressResponse) then) =
      __$$_AddressResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String detail, List<AddressData>? data});
}

/// @nodoc
class __$$_AddressResponseCopyWithImpl<$Res>
    extends _$AddressResponseCopyWithImpl<$Res, _$_AddressResponse>
    implements _$$_AddressResponseCopyWith<$Res> {
  __$$_AddressResponseCopyWithImpl(
      _$_AddressResponse _value, $Res Function(_$_AddressResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? detail = null,
    Object? data = freezed,
  }) {
    return _then(_$_AddressResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AddressData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressResponse implements _AddressResponse {
  const _$_AddressResponse(
      {required this.status,
      required this.detail,
      required final List<AddressData>? data})
      : _data = data;

  factory _$_AddressResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AddressResponseFromJson(json);

  @override
  final String status;
  @override
  final String detail;
  final List<AddressData>? _data;
  @override
  List<AddressData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddressResponse(status: $status, detail: $detail, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, detail, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressResponseCopyWith<_$_AddressResponse> get copyWith =>
      __$$_AddressResponseCopyWithImpl<_$_AddressResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressResponseToJson(
      this,
    );
  }
}

abstract class _AddressResponse implements AddressResponse {
  const factory _AddressResponse(
      {required final String status,
      required final String detail,
      required final List<AddressData>? data}) = _$_AddressResponse;

  factory _AddressResponse.fromJson(Map<String, dynamic> json) =
      _$_AddressResponse.fromJson;

  @override
  String get status;
  @override
  String get detail;
  @override
  List<AddressData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_AddressResponseCopyWith<_$_AddressResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
