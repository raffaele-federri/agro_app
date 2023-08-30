import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';

part 'right.freezed.dart';

part 'right.g.dart';

@freezed
class Right with _$Right {
  const factory Right({
    required int id,
    @JsonKey(name: 'title_ru') required String titleRu,
    @JsonKey(name: 'title_uz') required String titleUz,
    @JsonKey(name: 'title_en') required String titleEn,
    @JsonKey(name: 'short_description_ru') required String shortDescriptionRu,
    @JsonKey(name: 'short_description_uz') required String shortDescriptionUz,
    @JsonKey(name: 'short_description_en') required String shortDescriptionEn,
    required List<Category> categories,
  }) = _Right;

  factory Right.fromJson(Map<String, Object?> json) => _$RightFromJson(json);
}
