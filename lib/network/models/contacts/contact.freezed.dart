// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return _Contact.fromJson(json);
}

/// @nodoc
mixin _$Contact {
  int get id => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_ru')
  String get titleRu => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_uz')
  String get titleUz => throw _privateConstructorUsedError;
  @JsonKey(name: 'title_en')
  String get titleEn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactCopyWith<Contact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactCopyWith<$Res> {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) then) =
      _$ContactCopyWithImpl<$Res, Contact>;
  @useResult
  $Res call(
      {int id,
      String phone,
      String address,
      @JsonKey(name: 'title_ru') String titleRu,
      @JsonKey(name: 'title_uz') String titleUz,
      @JsonKey(name: 'title_en') String titleEn});
}

/// @nodoc
class _$ContactCopyWithImpl<$Res, $Val extends Contact>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? address = null,
    Object? titleRu = null,
    Object? titleUz = null,
    Object? titleEn = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      titleRu: null == titleRu
          ? _value.titleRu
          : titleRu // ignore: cast_nullable_to_non_nullable
              as String,
      titleUz: null == titleUz
          ? _value.titleUz
          : titleUz // ignore: cast_nullable_to_non_nullable
              as String,
      titleEn: null == titleEn
          ? _value.titleEn
          : titleEn // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$$_ContactCopyWith(
          _$_Contact value, $Res Function(_$_Contact) then) =
      __$$_ContactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String phone,
      String address,
      @JsonKey(name: 'title_ru') String titleRu,
      @JsonKey(name: 'title_uz') String titleUz,
      @JsonKey(name: 'title_en') String titleEn});
}

/// @nodoc
class __$$_ContactCopyWithImpl<$Res>
    extends _$ContactCopyWithImpl<$Res, _$_Contact>
    implements _$$_ContactCopyWith<$Res> {
  __$$_ContactCopyWithImpl(_$_Contact _value, $Res Function(_$_Contact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phone = null,
    Object? address = null,
    Object? titleRu = null,
    Object? titleUz = null,
    Object? titleEn = null,
  }) {
    return _then(_$_Contact(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      titleRu: null == titleRu
          ? _value.titleRu
          : titleRu // ignore: cast_nullable_to_non_nullable
              as String,
      titleUz: null == titleUz
          ? _value.titleUz
          : titleUz // ignore: cast_nullable_to_non_nullable
              as String,
      titleEn: null == titleEn
          ? _value.titleEn
          : titleEn // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Contact implements _Contact {
  const _$_Contact(
      {required this.id,
      required this.phone,
      required this.address,
      @JsonKey(name: 'title_ru') required this.titleRu,
      @JsonKey(name: 'title_uz') required this.titleUz,
      @JsonKey(name: 'title_en') required this.titleEn});

  factory _$_Contact.fromJson(Map<String, dynamic> json) =>
      _$$_ContactFromJson(json);

  @override
  final int id;
  @override
  final String phone;
  @override
  final String address;
  @override
  @JsonKey(name: 'title_ru')
  final String titleRu;
  @override
  @JsonKey(name: 'title_uz')
  final String titleUz;
  @override
  @JsonKey(name: 'title_en')
  final String titleEn;

  @override
  String toString() {
    return 'Contact(id: $id, phone: $phone, address: $address, titleRu: $titleRu, titleUz: $titleUz, titleEn: $titleEn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Contact &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.titleRu, titleRu) || other.titleRu == titleRu) &&
            (identical(other.titleUz, titleUz) || other.titleUz == titleUz) &&
            (identical(other.titleEn, titleEn) || other.titleEn == titleEn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, phone, address, titleRu, titleUz, titleEn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      __$$_ContactCopyWithImpl<_$_Contact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactToJson(
      this,
    );
  }
}

abstract class _Contact implements Contact {
  const factory _Contact(
      {required final int id,
      required final String phone,
      required final String address,
      @JsonKey(name: 'title_ru') required final String titleRu,
      @JsonKey(name: 'title_uz') required final String titleUz,
      @JsonKey(name: 'title_en') required final String titleEn}) = _$_Contact;

  factory _Contact.fromJson(Map<String, dynamic> json) = _$_Contact.fromJson;

  @override
  int get id;
  @override
  String get phone;
  @override
  String get address;
  @override
  @JsonKey(name: 'title_ru')
  String get titleRu;
  @override
  @JsonKey(name: 'title_uz')
  String get titleUz;
  @override
  @JsonKey(name: 'title_en')
  String get titleEn;
  @override
  @JsonKey(ignore: true)
  _$$_ContactCopyWith<_$_Contact> get copyWith =>
      throw _privateConstructorUsedError;
}
