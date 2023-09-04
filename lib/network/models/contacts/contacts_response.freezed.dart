// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contacts_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContactsResponse _$ContactsResponseFromJson(Map<String, dynamic> json) {
  return _ContactsResponse.fromJson(json);
}

/// @nodoc
mixin _$ContactsResponse {
  String get status => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  ContactsData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactsResponseCopyWith<ContactsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsResponseCopyWith<$Res> {
  factory $ContactsResponseCopyWith(
          ContactsResponse value, $Res Function(ContactsResponse) then) =
      _$ContactsResponseCopyWithImpl<$Res, ContactsResponse>;
  @useResult
  $Res call({String status, String detail, ContactsData data});

  $ContactsDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ContactsResponseCopyWithImpl<$Res, $Val extends ContactsResponse>
    implements $ContactsResponseCopyWith<$Res> {
  _$ContactsResponseCopyWithImpl(this._value, this._then);

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
              as ContactsData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactsDataCopyWith<$Res> get data {
    return $ContactsDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ContactsResponseCopyWith<$Res>
    implements $ContactsResponseCopyWith<$Res> {
  factory _$$_ContactsResponseCopyWith(
          _$_ContactsResponse value, $Res Function(_$_ContactsResponse) then) =
      __$$_ContactsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String detail, ContactsData data});

  @override
  $ContactsDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ContactsResponseCopyWithImpl<$Res>
    extends _$ContactsResponseCopyWithImpl<$Res, _$_ContactsResponse>
    implements _$$_ContactsResponseCopyWith<$Res> {
  __$$_ContactsResponseCopyWithImpl(
      _$_ContactsResponse _value, $Res Function(_$_ContactsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? detail = null,
    Object? data = null,
  }) {
    return _then(_$_ContactsResponse(
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
              as ContactsData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactsResponse implements _ContactsResponse {
  const _$_ContactsResponse(
      {required this.status, required this.detail, required this.data});

  factory _$_ContactsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ContactsResponseFromJson(json);

  @override
  final String status;
  @override
  final String detail;
  @override
  final ContactsData data;

  @override
  String toString() {
    return 'ContactsResponse(status: $status, detail: $detail, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactsResponse &&
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
  _$$_ContactsResponseCopyWith<_$_ContactsResponse> get copyWith =>
      __$$_ContactsResponseCopyWithImpl<_$_ContactsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactsResponseToJson(
      this,
    );
  }
}

abstract class _ContactsResponse implements ContactsResponse {
  const factory _ContactsResponse(
      {required final String status,
      required final String detail,
      required final ContactsData data}) = _$_ContactsResponse;

  factory _ContactsResponse.fromJson(Map<String, dynamic> json) =
      _$_ContactsResponse.fromJson;

  @override
  String get status;
  @override
  String get detail;
  @override
  ContactsData get data;
  @override
  @JsonKey(ignore: true)
  _$$_ContactsResponseCopyWith<_$_ContactsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
