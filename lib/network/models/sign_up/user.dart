import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String username,
    @JsonKey(name: 'phone_number') required String phoneNumber,
    required String? password,
    required int age,
    required String address,
    @JsonKey(name: 'gender_id') required int genderId,
    @JsonKey(name: 'status_id') required int statusId,
    @JsonKey(name: 'city_id') required int cityId,
    @JsonKey(name: 'district_id') required int districtId,
    @JsonKey(name: 'device_type') required String deviceType,
    required int id,
    @JsonKey(name: 'registration_at') required String? registrationAt,
    @JsonKey(name: 'last_login_at') required String? lastLoginAt,
    @JsonKey(name: 'deleted_at') required String? deletedAt,


  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
