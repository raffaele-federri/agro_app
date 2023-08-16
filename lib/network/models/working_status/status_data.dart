import 'package:agro_app/network/models/working_status/status_items.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_data.freezed.dart';
part 'status_data.g.dart';

@freezed
class StatusData with _$StatusData {
  const factory StatusData({
    required int? total,
    required List<Items> items,

  }) = _StatusData;

  factory StatusData.fromJson(Map<String, Object?> json) => _$StatusDataFromJson(json);
}