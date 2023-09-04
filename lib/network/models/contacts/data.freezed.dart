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

ContactsData _$ContactsDataFromJson(Map<String, dynamic> json) {
  return _ContactsData.fromJson(json);
}

/// @nodoc
mixin _$ContactsData {
  int get total => throw _privateConstructorUsedError;
  List<Contact> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactsDataCopyWith<ContactsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsDataCopyWith<$Res> {
  factory $ContactsDataCopyWith(
          ContactsData value, $Res Function(ContactsData) then) =
      _$ContactsDataCopyWithImpl<$Res, ContactsData>;
  @useResult
  $Res call({int total, List<Contact> items});
}

/// @nodoc
class _$ContactsDataCopyWithImpl<$Res, $Val extends ContactsData>
    implements $ContactsDataCopyWith<$Res> {
  _$ContactsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactsDataCopyWith<$Res>
    implements $ContactsDataCopyWith<$Res> {
  factory _$$_ContactsDataCopyWith(
          _$_ContactsData value, $Res Function(_$_ContactsData) then) =
      __$$_ContactsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, List<Contact> items});
}

/// @nodoc
class __$$_ContactsDataCopyWithImpl<$Res>
    extends _$ContactsDataCopyWithImpl<$Res, _$_ContactsData>
    implements _$$_ContactsDataCopyWith<$Res> {
  __$$_ContactsDataCopyWithImpl(
      _$_ContactsData _value, $Res Function(_$_ContactsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? items = null,
  }) {
    return _then(_$_ContactsData(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactsData implements _ContactsData {
  const _$_ContactsData(
      {required this.total, required final List<Contact> items})
      : _items = items;

  factory _$_ContactsData.fromJson(Map<String, dynamic> json) =>
      _$$_ContactsDataFromJson(json);

  @override
  final int total;
  final List<Contact> _items;
  @override
  List<Contact> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ContactsData(total: $total, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactsData &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactsDataCopyWith<_$_ContactsData> get copyWith =>
      __$$_ContactsDataCopyWithImpl<_$_ContactsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactsDataToJson(
      this,
    );
  }
}

abstract class _ContactsData implements ContactsData {
  const factory _ContactsData(
      {required final int total,
      required final List<Contact> items}) = _$_ContactsData;

  factory _ContactsData.fromJson(Map<String, dynamic> json) =
      _$_ContactsData.fromJson;

  @override
  int get total;
  @override
  List<Contact> get items;
  @override
  @JsonKey(ignore: true)
  _$$_ContactsDataCopyWith<_$_ContactsData> get copyWith =>
      throw _privateConstructorUsedError;
}
