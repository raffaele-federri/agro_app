import 'package:freezed_annotation/freezed_annotation.dart';



part 'data.freezed.dart';

part 'data.g.dart';

@freezed
class ComplainData with _$ComplainData {
  const factory ComplainData({
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'complain_status_id') required int complainStatusId,
    required String? title,
    required String? description,
    required String? image,
    required int rate,
    @JsonKey(name: 'action_date') required String? actionData,
    required int id,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'updated_at') required String? updatedAt,
  }) = _ComplainData;

  factory ComplainData.fromJson(Map<String, Object?> json) =>
      _$ComplainDataFromJson(json);
}
