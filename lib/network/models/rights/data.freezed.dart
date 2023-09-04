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

RightsData _$RightsDataFromJson(Map<String, dynamic> json) {
  return _RightsData.fromJson(json);
}

/// @nodoc
mixin _$RightsData {
  int get total => throw _privateConstructorUsedError;
  List<Right> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RightsDataCopyWith<RightsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RightsDataCopyWith<$Res> {
  factory $RightsDataCopyWith(
          RightsData value, $Res Function(RightsData) then) =
      _$RightsDataCopyWithImpl<$Res, RightsData>;
  @useResult
  $Res call({int total, List<Right> items});
}

/// @nodoc
class _$RightsDataCopyWithImpl<$Res, $Val extends RightsData>
    implements $RightsDataCopyWith<$Res> {
  _$RightsDataCopyWithImpl(this._value, this._then);

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
              as List<Right>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RightsDataCopyWith<$Res>
    implements $RightsDataCopyWith<$Res> {
  factory _$$_RightsDataCopyWith(
          _$_RightsData value, $Res Function(_$_RightsData) then) =
      __$$_RightsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, List<Right> items});
}

/// @nodoc
class __$$_RightsDataCopyWithImpl<$Res>
    extends _$RightsDataCopyWithImpl<$Res, _$_RightsData>
    implements _$$_RightsDataCopyWith<$Res> {
  __$$_RightsDataCopyWithImpl(
      _$_RightsData _value, $Res Function(_$_RightsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? items = null,
  }) {
    return _then(_$_RightsData(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Right>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RightsData implements _RightsData {
  const _$_RightsData({required this.total, required final List<Right> items})
      : _items = items;

  factory _$_RightsData.fromJson(Map<String, dynamic> json) =>
      _$$_RightsDataFromJson(json);

  @override
  final int total;
  final List<Right> _items;
  @override
  List<Right> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'RightsData(total: $total, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RightsData &&
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
  _$$_RightsDataCopyWith<_$_RightsData> get copyWith =>
      __$$_RightsDataCopyWithImpl<_$_RightsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RightsDataToJson(
      this,
    );
  }
}

abstract class _RightsData implements RightsData {
  const factory _RightsData(
      {required final int total,
      required final List<Right> items}) = _$_RightsData;

  factory _RightsData.fromJson(Map<String, dynamic> json) =
      _$_RightsData.fromJson;

  @override
  int get total;
  @override
  List<Right> get items;
  @override
  @JsonKey(ignore: true)
  _$$_RightsDataCopyWith<_$_RightsData> get copyWith =>
      throw _privateConstructorUsedError;
}
