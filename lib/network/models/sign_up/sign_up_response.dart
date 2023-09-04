import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'sign_up_response.freezed.dart';

part 'sign_up_response.g.dart';

@freezed
class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({
    required String status,
    required String detail,
    required SignUpData data,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, Object?> json) =>
      _$SignUpResponseFromJson(json);
}
