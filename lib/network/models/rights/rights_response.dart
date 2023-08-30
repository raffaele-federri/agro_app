import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';


part 'rights_response.freezed.dart';
part 'rights_response.g.dart';

@freezed
class RightsResponse with _$RightsResponse {
  const factory RightsResponse({
    required String status,
    required String detail,
    required RightsData data,
  }) = _RightsResponse;

  factory RightsResponse.fromJson(Map<String, Object?> json) =>
      _$RightsResponseFromJson(json);
}