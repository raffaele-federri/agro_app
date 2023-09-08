import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';



part 'create_complain_response.freezed.dart';
part 'create_complain_response.g.dart';

@freezed
class CreateComplainResponse with _$CreateComplainResponse {
  const factory CreateComplainResponse({
    required String status,
    required String detail,
    required ComplainData data,
  }) = _CreateComplainResponse;

  factory CreateComplainResponse.fromJson(Map<String, Object?> json) =>
      _$CreateComplainResponseFromJson(json);
}