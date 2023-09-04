import 'package:agro_app/network/models/sign_up/user.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class SignUpData with _$SignUpData {
  const factory SignUpData({
    required User? user,
    @JsonKey(name: 'access_token')
    required String token,

  }) = _SignUpData;

  factory SignUpData.fromJson(Map<String, Object?> json) => _$SignUpDataFromJson(json);
}