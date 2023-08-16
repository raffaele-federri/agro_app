// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusData _$StatusDataFromJson(Map<String, dynamic> json) {
  return _StatusData.fromJson(json);
}

/// @nodoc
mixin _$StatusData {
  int? get total => throw _privateConstructorUsedError;
  List<Items> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusDataCopyWith<StatusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusDataCopyWith<$Res> {
  factory $StatusDataCopyWith(
          StatusData value, $Res Function(StatusData) then) =
      _$StatusDataCopyWithImpl<$Res, StatusData>;
  @useResult
  $Res call({int? total, List<Items> items});
}

/// @nodoc
class _$StatusDataCopyWithImpl<$Res, $Val extends StatusData>
    implements $StatusDataCopyWith<$Res> {
  _$StatusDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatusDataCopyWith<$Res>
    implements $StatusDataCopyWith<$Res> {
  factory _$$_StatusDataCopyWith(
          _$_StatusData value, $Res Function(_$_StatusData) then) =
      __$$_StatusDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? total, List<Items> items});
}

/// @nodoc
class __$$_StatusDataCopyWithImpl<$Res>
    extends _$StatusDataCopyWithImpl<$Res, _$_StatusData>
    implements _$$_StatusDataCopyWith<$Res> {
  __$$_StatusDataCopyWithImpl(
      _$_StatusData _value, $Res Function(_$_StatusData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = freezed,
    Object? items = null,
  }) {
    return _then(_$_StatusData(
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Items>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusData implements _StatusData {
  const _$_StatusData({required this.total, required final List<Items> items})
      : _items = items;

  factory _$_StatusData.fromJson(Map<String, dynamic> json) =>
      _$$_StatusDataFromJson(json);

  @override
  final int? total;
  final List<Items> _items;
  @override
  List<Items> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'StatusData(total: $total, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusData &&
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
  _$$_StatusDataCopyWith<_$_StatusData> get copyWith =>
      __$$_StatusDataCopyWithImpl<_$_StatusData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusDataToJson(
      this,
    );
  }
}

abstract class _StatusData implements StatusData {
  const factory _StatusData(
      {required final int? total,
      required final List<Items> items}) = _$_StatusData;

  factory _StatusData.fromJson(Map<String, dynamic> json) =
      _$_StatusData.fromJson;

  @override
  int? get total;
  @override
  List<Items> get items;
  @override
  @JsonKey(ignore: true)
  _$$_StatusDataCopyWith<_$_StatusData> get copyWith =>
      throw _privateConstructorUsedError;
}
