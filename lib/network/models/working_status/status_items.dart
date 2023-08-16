import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_items.freezed.dart';

part 'status_items.g.dart';

@freezed
class Items with _$Items {
  const factory Items({
    @JsonKey(name: 'name_uz') required String? nameUz,
    @JsonKey(name: 'name_en') required String? nameEn,
    @JsonKey(name: 'name_ru') required String? nameRu,
    required int? id,
  }) = _Items;

  factory Items.fromJson(Map<String, Object?> json) => _$ItemsFromJson(json);
}
