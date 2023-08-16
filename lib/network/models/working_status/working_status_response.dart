import 'package:agro_app/network/models/working_status/status_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'working_status_response.freezed.dart';
part 'working_status_response.g.dart';

@freezed
class  WorkingStatusResponse with _$WorkingStatusResponse {
  const factory WorkingStatusResponse({
    required String status,
    required String detail,
    required StatusData data,

  }) = _WorkingStatusResponse;

  factory WorkingStatusResponse.fromJson(Map<String, Object?> json) =>
      _$WorkingStatusResponseFromJson(json);
}