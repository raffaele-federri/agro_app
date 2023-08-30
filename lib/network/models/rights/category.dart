import 'package:agro_app/network/models/rights/right.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    @JsonKey(name: 'title_ru') required String titleRu,
    @JsonKey(name: 'title_uz') required String titleUz,
    @JsonKey(name: 'title_en') required String titleEn,
    @JsonKey(name: 'short_description_ru') required String shortDescriptionRu,
    @JsonKey(name: 'short_description_uz') required String shortDescriptionUz,
    @JsonKey(name: 'short_description_en') required String shortDescriptionEn,
  }) = _Category;

  factory Category.fromJson(Map<String, Object?> json) =>
      _$CategoryFromJson(json);
}
