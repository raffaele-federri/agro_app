import 'package:freezed_annotation/freezed_annotation.dart';



part 'contact.freezed.dart';

part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    required int id,
    required String phone,
    required String address,
    @JsonKey(name: 'title_ru') required String? titleRu,
    @JsonKey(name: 'title_uz') required String? titleUz,
    @JsonKey(name: 'title_en') required String? titleEn,
  }) = _Contact;

  factory Contact.fromJson(Map<String, Object?> json) => _$ContactFromJson(json);
}