import 'package:agro_app/network/models/rights/right.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class RightsData with _$RightsData {
  const factory RightsData({
    required int total,
    required List<Right> items,
  }) = _RightsData;

  factory RightsData.fromJson(Map<String, Object?> json) =>
      _$RightsDataFromJson(json);
}
