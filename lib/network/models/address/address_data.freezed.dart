// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressData _$AddressDataFromJson(Map<String, dynamic> json) {
  return _AddressData.fromJson(json);
}

/// @nodoc
mixin _$AddressData {
  @JsonKey(name: 'name_en')
  String? get nameEn => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_ru')
  String? get nameRu => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_uz')
  String? get nameUz => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  List<Region>? get regions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDataCopyWith<AddressData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDataCopyWith<$Res> {
  factory $AddressDataCopyWith(
          AddressData value, $Res Function(AddressData) then) =
      _$AddressDataCopyWithImpl<$Res, AddressData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name_en') String? nameEn,
      @JsonKey(name: 'name_ru') String? nameRu,
      @JsonKey(name: 'name_uz') String? nameUz,
      int? id,
      List<Region>? regions});
}

/// @nodoc
class _$AddressDataCopyWithImpl<$Res, $Val extends AddressData>
    implements $AddressDataCopyWith<$Res> {
  _$AddressDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameEn = freezed,
    Object? nameRu = freezed,
    Object? nameUz = freezed,
    Object? id = freezed,
    Object? regions = freezed,
  }) {
    return _then(_value.copyWith(
      nameEn: freezed == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      nameRu: freezed == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String?,
      nameUz: freezed == nameUz
          ? _value.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      regions: freezed == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Region>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressDataCopyWith<$Res>
    implements $AddressDataCopyWith<$Res> {
  factory _$$_AddressDataCopyWith(
          _$_AddressData value, $Res Function(_$_AddressData) then) =
      __$$_AddressDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name_en') String? nameEn,
      @JsonKey(name: 'name_ru') String? nameRu,
      @JsonKey(name: 'name_uz') String? nameUz,
      int? id,
      List<Region>? regions});
}

/// @nodoc
class __$$_AddressDataCopyWithImpl<$Res>
    extends _$AddressDataCopyWithImpl<$Res, _$_AddressData>
    implements _$$_AddressDataCopyWith<$Res> {
  __$$_AddressDataCopyWithImpl(
      _$_AddressData _value, $Res Function(_$_AddressData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameEn = freezed,
    Object? nameRu = freezed,
    Object? nameUz = freezed,
    Object? id = freezed,
    Object? regions = freezed,
  }) {
    return _then(_$_AddressData(
      nameEn: freezed == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      nameRu: freezed == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String?,
      nameUz: freezed == nameUz
          ? _value.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      regions: freezed == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Region>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressData implements _AddressData {
  const _$_AddressData(
      {@JsonKey(name: 'name_en') required this.nameEn,
      @JsonKey(name: 'name_ru') required this.nameRu,
      @JsonKey(name: 'name_uz') required this.nameUz,
      required this.id,
      required final List<Region>? regions})
      : _regions = regions;

  factory _$_AddressData.fromJson(Map<String, dynamic> json) =>
      _$$_AddressDataFromJson(json);

  @override
  @JsonKey(name: 'name_en')
  final String? nameEn;
  @override
  @JsonKey(name: 'name_ru')
  final String? nameRu;
  @override
  @JsonKey(name: 'name_uz')
  final String? nameUz;
  @override
  final int? id;
  final List<Region>? _regions;
  @override
  List<Region>? get regions {
    final value = _regions;
    if (value == null) return null;
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddressData(nameEn: $nameEn, nameRu: $nameRu, nameUz: $nameUz, id: $id, regions: $regions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressData &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.nameRu, nameRu) || other.nameRu == nameRu) &&
            (identical(other.nameUz, nameUz) || other.nameUz == nameUz) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._regions, _regions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nameEn, nameRu, nameUz, id,
      const DeepCollectionEquality().hash(_regions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressDataCopyWith<_$_AddressData> get copyWith =>
      __$$_AddressDataCopyWithImpl<_$_AddressData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressDataToJson(
      this,
    );
  }
}

abstract class _AddressData implements AddressData {
  const factory _AddressData(
      {@JsonKey(name: 'name_en') required final String? nameEn,
      @JsonKey(name: 'name_ru') required final String? nameRu,
      @JsonKey(name: 'name_uz') required final String? nameUz,
      required final int? id,
      required final List<Region>? regions}) = _$_AddressData;

  factory _AddressData.fromJson(Map<String, dynamic> json) =
      _$_AddressData.fromJson;

  @override
  @JsonKey(name: 'name_en')
  String? get nameEn;
  @override
  @JsonKey(name: 'name_ru')
  String? get nameRu;
  @override
  @JsonKey(name: 'name_uz')
  String? get nameUz;
  @override
  int? get id;
  @override
  List<Region>? get regions;
  @override
  @JsonKey(ignore: true)
  _$$_AddressDataCopyWith<_$_AddressData> get copyWith =>
      throw _privateConstructorUsedError;
}
